import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
import '../../../plugin.dart';
import '../../../src/sugar/dart_core.dart';
import '../../../widget/listenable_scope.dart';
import '../sugar/common.dart';

@FairPatch()
class ListenableScopeDemo extends StatefulWidget {
  const ListenableScopeDemo({super.key});

  @override
  State<ListenableScopeDemo> createState() => _ListenableScopeDemoState();
}

class _ListenableScopeDemoState extends State<ListenableScopeDemo> {
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

  void _onTabControllerSetIndex(int index) {
    FairCommonPlugin().tabController({
      'pageName': _pageName,
      'uniqueKey': _uniqueKey,
      'type': 'TabController0',
      'method': 'set',
      'parameter': index,
    });
  }

  void _onTabControllerAnimateTo(int index) {
    FairCommonPlugin().tabController({
      'pageName': _pageName,
      'uniqueKey': _uniqueKey,
      'type': 'TabController0',
      'method': 'animateTo',
      'parameter': index,
    });
  }

  void _onScrollControllerAnimateTo(double offset) {
    FairCommonPlugin().scrollController({
      'pageName': _pageName,
      'uniqueKey': _uniqueKey,
      'type': 'ScrollController',
      'method': 'get',
      'callback': (values) {
        if (values['hasClients'] == true) {
          FairCommonPlugin().scrollController({
            'pageName': _pageName,
            'uniqueKey': _uniqueKey,
            'type': 'ScrollController',
            'method': 'animateTo',
            'parameter': {
              'offset': offset,
              'duration': const Duration(seconds: 1),
              'curve': 'Curves.bounceIn',
            },
          });
        }
      }
    });
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

  void _onAnimationControllerStart() {
    FairCommonPlugin().animationController({
      'pageName': _pageName,
      'uniqueKey': _uniqueKey,
      'type': 'AnimationController',
      'method': 'get',
      'callback': (values) {
        if (values['isAnimating'] == true) {
          return;
        }
        var method = 'forward';
        if (values['isCompleted'] == true) {
          method = 'reverse';
        }
        FairCommonPlugin().animationController({
          'pageName': _pageName,
          'uniqueKey': _uniqueKey,
          'type': 'AnimationController',
          'method': method,
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("例子"),),
      body: ListenableScope(
        addListener: _addListener,
        onCreateKey: _onCreateKey,
        uniqueKey: 'ListenableScopeDemo',
        configs: [
          ListenableScopeConfig(type: 'ScrollController'),
          ListenableScopeConfig(
            type: 'AnimationController',
            addListener: true,
          ),
          // 有重复的类型，请用 tag 区分
          ListenableScopeConfig(
            type: 'TabController',
            addListener: true,
            tag: '0',
          ),
          ListenableScopeConfig(
            type: 'ValueNotifier',
            addListener: true,
          ),
          // 有重复的类型，请用 tag 区分
          ListenableScopeConfig(
            type: 'TabController',
            tag: '1',
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
                sugarCase: () => 'AnimationController',
                reValue: () => AnimationController(
                  vsync: vsync,
                  value: 50.0,
                  lowerBound: 50.0,
                  upperBound: 100.0,
                  duration: const Duration(seconds: 2),
                  reverseDuration: const Duration(seconds: 2),
                ),
              ),
              SugarSwitchCaseObj(
                sugarCase: () => 'TabController0',
                reValue: () => TabController(vsync: vsync, length: 2),
              ),
              SugarSwitchCaseObj(
                sugarCase: () => 'ValueNotifier',
                reValue: () => ValueNotifier(1.0),
              ),
              SugarSwitchCaseObj(
                sugarCase: () => 'TabController1',
                reValue: () => TabController(vsync: vsync, length: 3),
              ),
            ],
                () => Sugar.nullValue(),
          );
        },
        builder: (BuildContext context) {
          return Column(
            children: [
              Wrap(
                runSpacing: 8,
                spacing: 8,
                children: [
                  TextButton(
                    onPressed: SugarCommon.voidCallBack(
                      function: _onTabControllerSetIndex,
                      value: 1,
                    ),
                    child: const Text('设置 TabController index'),
                  ),
                  TextButton(
                    onPressed: SugarCommon.voidCallBack(
                      function: _onTabControllerAnimateTo,
                      value: 1,
                    ),
                    child: const Text('调用 TabController animateTo'),
                  ),
                  TextButton(
                    onPressed: SugarCommon.voidCallBack(
                      function: _onScrollControllerAnimateTo,
                      value: 300.0,
                    ),
                    child: const Text('调用 ScrollController animateTo'),
                  ),
                  TextButton(
                    onPressed: SugarCommon.voidCallBack(
                      function: _onValueNotifierSetValue,
                      value: 666.0,
                    ),
                    child: const Text('设置 ValueNotifier 的值'),
                  ),
                ],
              ),
              ValueListenableBuilder(
                valueListenable: ListenableScope.of<ValueNotifier>(
                  context,
                  'ValueNotifier',
                ),
                builder: (context, dynamic value, child) {
                  return Text(
                    SugarString.concatenates(
                      'ValueNotifier 的值为:',
                      '$value',
                    ),
                  );
                },
              ),
              GestureDetector(
                onTap: _onAnimationControllerStart,
                child: Center(
                  child: AnimatedBuilder(
                    animation: ListenableScope.of<AnimationController>(
                      context,
                      'AnimationController',
                    ),
                    builder: (BuildContext context, Widget? child) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 50,
                        width: Sugar.mapGet(
                          Sugar.dartObjectToMap(
                            ListenableScope.of<AnimationController>(
                              context,
                              'AnimationController',
                            ),
                          ),
                          'value',
                        ),
                        color: Colors.blue,
                        child: const Text(
                          '点我开始动画!',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              TabBar(
                tabs: const [
                  Tab(
                    child: Text(
                      'Tab0',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Tab1',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
                controller: ListenableScope.of<TabController>(
                  context,
                  'TabController0',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
