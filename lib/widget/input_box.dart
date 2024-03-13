import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final String? text;
  final String? hintText;
  final TextEditingController textController;

  const InputBox({Key? key, this.text, this.hintText, required this.textController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration:
            BoxDecoration(border: Border.all(color: Color(0xff1166bc)), borderRadius: BorderRadius.circular(10)),
        child: Row(children: [
          const SizedBox(width: 10),
          Text('${text ?? "手机号"} :  ', style: TextStyle(fontSize: 18)),
          Expanded(
              child: TextField(
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  maxLength: 11,
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.start,
                  controller: textController,
                  style: const TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w500, color: Colors.black),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      counterText: "",
                      hintText: hintText ?? "请输入本机手机号",
                      hintStyle: const TextStyle(color: Colors.grey, fontSize: 16, height: 1.5)))),
          const SizedBox(width: 20)
        ]));
  }
}
