import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class SugarPage extends StatefulWidget {
  const SugarPage({Key? key}) : super(key: key);

  @override
  State<SugarPage> createState() => _SugarPageState();
}

class _SugarPageState extends State<SugarPage> {
  int random = 6;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("语法糖的例子"),
      ),
      body: Sugar.ifEqual(random, 6, trueValue: () {
        return Container(
          color:Colors.greenAccent,
          width: 200,
          height: 10,

        );
      }, falseValue: () {
        return Container(
          color:Colors.red,
          width: 200,
          height: 10,
        );
      }),
    );
  }
}
