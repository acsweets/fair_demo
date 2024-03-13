import 'package:demo/widget/index.dart';
import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

import '../../../assets.dart';

@FairPatch()
class FromPage extends StatefulWidget {
  const FromPage({Key? key}) : super(key: key);

  @override
  State<FromPage> createState() => _FromPageState();
}

class _FromPageState extends State<FromPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "密码登录",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.assets_image_wu_webp),
          const Text(
            "欢迎使用智慧之道",
            style: TextStyle(fontSize: 20),
          ),
          InputBox(
            textController: TextEditingController(),
            text: "账号",
          ),
          InputBox(
            textController: TextEditingController(),
            text: "密码",
          ),
          RadiusInkWellWidget(child: Text("提交"), onPressed: () {
          })
        ],
      ),
    );
  }
}
