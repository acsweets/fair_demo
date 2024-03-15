import 'package:demo/widget/index.dart';
import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

import '../../../assets.dart';
import '../sugar/common.dart';

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
        centerTitle: true,
        title: const Text(
          "密码登录",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100, width: 100),
          Image.asset(
            Assets.assets_image_wu_webp,
            color: Colors.black,
          ),
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
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'regular_dynamic_page',
                  arguments: {'path': 'assets/bundle/assets/bundle/lib_deom.fair.json', 'data': {}});
            },
            child: Text("点击跳转"),
          ),
        ],
      ),
    );
  }
}
