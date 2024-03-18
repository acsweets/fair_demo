import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Start"),
      ),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'regular_dynamic_page',
                  arguments: {'path': 'assets/bundle/lib_test_lib_page_from_page.fair.json', 'data': {}});
            },
            child: Text("点击跳转表单界面"),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'regular_dynamic_page',
                  arguments: {'path': 'assets/bundle/lib_test_lib_page_sugar.fair.json', 'data': {}});
            },
            child: Text("点击跳转语法糖"),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'regular_dynamic_page',
                  arguments: {'path': 'assets/bundle/lib_test_lib_page_route_page.fair.json', 'data': {}});
            },
            child: Text("点击跳转路由相关"),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'regular_dynamic_page',
                  arguments: {'path': 'assets/bundle/lib_test_lib_page_route_page.fair.json', 'data': {}});
            },
            child: Text("点击跳转使用flutter对象"),
          ),
        ],
      ),
    );
  }
}
