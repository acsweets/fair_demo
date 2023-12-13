// import 'package:cses_saas/cses_saas.dart';
// import 'package:flutter/material.dart';
//
//
// @FairPatch()
// class FoundError extends StatefulWidget {
//   const FoundError({
//     super.key,
//   });
//
//   @override
//   State<FoundError> createState() => _FoundErrorState();
// }
//
// class _FoundErrorState extends State<FoundError> {
//   late TextEditingController _titleController;
//   late TextEditingController _contentController;
//   late FocusNode _contentFocusNode;
//   late CreateTaskLogic logic;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("问题任务"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SingleInputView(
//                 notNull: true,
//                 title: '标题',
//                 textController: _titleController,
//                 hintText: '请输入标题',
//                 margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
//             ItemPriority(
//               selectPriority: updatePriority,
//             ),
//             SingleSelectView(
//                 margin: const EdgeInsets.symmetric(
//                     horizontal: 15,vertical: 10
//                 ),
//                 title: '所属项目',
//                 notNull: true,
//                 content: "请选择",
//                 onPressed: () => onTapShowToast()),
//             MultilineInputView(
//                 title: "描述",
//                 hintText: '输入描述内容...',
//                 textController: _contentController,
//                 focusNode: _contentFocusNode,
//                 minLines: 5,
//                 margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10)),
//           ],
//         ),
//       ),
//       bottomNavigationBar: RadiusInkWellWidget(
//           margin: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
//           onPressed: () => create(),
//           radius: 10,
//           child: Container(
//               alignment: Alignment.center,
//               padding: const EdgeInsets.symmetric(horizontal: 40),
//               height: 45,
//               child: const Text('创建任务',
//                   style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)))),
//     );
//   }
//   void create() {
//     print("创建任务");
//   }
//
//   void onTapShowToast() async {
//     FocusScope.of(context).requestFocus(FocusNode());
//     Get.bottomSheet(const ProjectDialog(), isScrollControlled: true, ignoreSafeArea: false).then((value) {
//       if (value != null) logic.updateProject(value);
//     });
//   }
//
//   void updatePriority(PriorityBean value) {
//     logic.updatePriority(value);
//   }
//
// }
