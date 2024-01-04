import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

import '../plugin.dart';

@FairPatch()
class TestPage extends StatefulWidget {
  const TestPage({super.key, this.fairProps});

  final dynamic fairProps;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @FairProps()
  var fairProps;
  var feedList = [];
  final String _pageName = '#FairKey#';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FairCommonPlugin"),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              showToast();
            },
            child: const Text('TestPage')),
      ),
    );
  }

  void showToast() {
    FairCommonPlugin().showMessageToast({
      'pageName': _pageName,
      'msg': '调用插件案例',
    });
  }
}
