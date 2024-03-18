import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
import '../../../plugin.dart';
import '../../../widget/listenable_scope.dart';
import '../sugar/common.dart';

@FairPatch()
class UseObject extends StatefulWidget {
  const UseObject({Key? key}) : super(key: key);

  @override
  State<UseObject> createState() => _UseObjectState();
}

class _UseObjectState extends State<UseObject> {
  @FairProps()
  var fairProps;
  final String _pageName = '#FairKey#';

  // 用于去内存里面获取 ListenableScope
  String _uniqueKey = '';

  void _onCreateKey(String key) {
    _uniqueKey = key;
  }

  void _addListener(dynamic value) {
    var type = value[0];
    var values = value[1];

    FairCommonPlugin().jsPrint(
      {
        'pageName': _pageName,
        'type': type,
        'values': values,
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //利用BuildContext
      appBar: AppBar(
        title: const Text(" 使用Dart中的对象"),
        centerTitle: true,
      ),
      body: ListenableScope(
        configs: [
          ListenableScopeConfig(type: 'ScrollController'),
          ListenableScopeConfig(
            type: 'ValueNotifier',
            addListener: true,
          ),
        ],
        onCreate: (String key, TickerProvider vsync) {
          return Sugar.switchCase(
            key,
            [
              SugarSwitchCaseObj(
                sugarCase: () => 'ScrollController',
                reValue: () => ScrollController(),
              ),
              SugarSwitchCaseObj(
                sugarCase: () => 'ValueNotifier',
                reValue: () => ValueNotifier(1.0),
              ),
            ],
                () => Sugar.nullValue(),
          );
        },
        uniqueKey: 'UseObject',
        addListener: _addListener,
        onCreateKey: _onCreateKey,
        builder: (BuildContext context) {
          return Scaffold(
            body: Container(
              width: double.infinity,
              height: 200,
              color: Colors.greenAccent,
              child: TextButton(
                onPressed: SugarCommon.voidCallBack(
                  function: _onValueNotifierSetValue,
                  value: 666.0,
                ),
                child: const Text('设置 ValueNotifier 的值'),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onValueNotifierSetValue(double value) {
    FairCommonPlugin().valueNotifier({
      'pageName': _pageName,
      'uniqueKey': _uniqueKey,
      'type': 'ValueNotifier',
      'method': 'set',
      'parameter': value,
    });
  }
}
