import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
import '../../../widget/listenable_scope.dart';

@FairPatch()
class UseObject extends StatefulWidget {
  const UseObject({Key? key}) : super(key: key);

  @override
  State<UseObject> createState() => _UseObjectState();
}

class _UseObjectState extends State<UseObject> {
  @FairProps()
  var fairProps;


  void _addListener(value) {}
  void _onCreateKey(key) {}
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
                onPressed: () {},
                child: const Text('设置 ValueNotifier 的值'),
              ),
            ),
          );
        },
      ),
    );
  }
}
