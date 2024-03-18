import 'package:demo/plugin.dart';
import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class RoutePage extends StatefulWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  var index = 0;
  final String _pageName = '#FairKey#';

  void onLoad() {}

  void onUnload() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("测试路由跳转页"),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            "$index",
            style: TextStyle(fontSize: 16, color: Colors.green),
          )),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => _onValueChanged(5),
            child: SizedBox(child: Text("点击改变")),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: _showToast,
            child: Text("点击打印"),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: _goNewPage,
            child: Text("点击跳转"),
          )
        ],
      ),
    );
  }

  void _onValueChanged(int value) {
    index = value;
    setState(() {});
  }

  void _goNewPage() {
    FairCommonPlugin().navigate({
      // required
      'pageName': _pageName,
      // if need, add a callback
      'callback': (dynamic result) {
        // result is map or null
      },
      'routeName': 'regular_dynamic_page',
      'method': 'pushNamed',
      'arguments': {
        'path': 'assets/bundle/lib_test_lib_page_sugar.fair.json',
        'data': {
          'fairProps': {
            'index': index,
          }
        },
      }
    });
  }

  void _showToast() {
    FairCommonPlugin().showMessageToast({
      'pageName': _pageName,
      'msg': '点击按钮',
    });
  }
}
