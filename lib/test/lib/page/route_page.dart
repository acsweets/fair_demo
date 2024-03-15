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
            onTap: () {
              Navigator.pushNamed(context, 'regular_dynamic_page',
                  arguments: {'path': 'assets/bundle/lib_test_lib_page_sugar.fair.json', 'data': {}});
            },
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
}
