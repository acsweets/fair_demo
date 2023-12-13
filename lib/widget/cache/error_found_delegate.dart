// import 'package:cses_saas/cses_saas.dart';
// import 'package:flutter/material.dart';
//
// class ErrorFoundDelegate extends FairDelegate {
//   late TextEditingController _titleController;
//
//   CreateTaskLogic get logic => Get.find<CreateTaskLogic>(tag: TaskType.composite.toString());
//
//   @override
//   void initState() {
//     super.initState();
//     onLoad();
//   }
//
//   void onLoad() {
//     _titleController = TextEditingController();
//   }
//
//   @override
//   Map<String, PropertyValue> bindValue() {
//     return {
//       ...super.bindValue(),
//       // key 跟页面上面的名字一致
//       '_titleController': () => _titleController,
//       'logic': () => logic,
//       "_contentController": () => logic.contentController,
//       "_contentFocusNode": () => logic.contentFocusNode,
//     };
//   }
//
//   @override
//   Map<String, Function> bindFunction() {
//     return {
//       ...super.bindFunction(),
//       'onTapShowToast': onTapShowToast,
//       'updatePriority': updatePriority,
//     };
//   }
//
//   void onTapShowToast() async {
//     FocusScope.of(context).requestFocus(FocusNode());
//     Get.bottomSheet(const ProjectDialog(), isScrollControlled: true, ignoreSafeArea: false).then((value) {
//       if (value != null) {
//         logic.updateProject(value);
//         setState(() {});
//       }
//     });
//   }
//
//   void updatePriority(PriorityBean value) {
//     logic.updatePriority(value);
//   }
// }
