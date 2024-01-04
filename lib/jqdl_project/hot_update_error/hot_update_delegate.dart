// import 'package:cses_saas/cses_saas.dart';
// import 'package:fair/fair.dart';
// import 'package:flutter/material.dart';
//
// class HotUpdateDelegate extends FairDelegate {
//   CreateTaskLogic get logic => Get.find<CreateTaskLogic>(tag: TaskType.issue.toString());
//   late ScrollPhysics scrollPhysics;
//
//   @override
//   void initState() {
//     super.initState();
//     onLoad();
//   }
//
//   void onLoad() {
//     scrollPhysics = const NeverScrollableScrollPhysics();
//   }
//
//   @override
//   Map<String, PropertyValue> bindValue() {
//     return {
//       ...super.bindValue(),
//       // key 跟页面上面的名字一致
//       "scrollPhysics": () => scrollPhysics,
//       'logic': () => logic,
//       'taskType': () => TaskType.issue,
//       'showLinkTask': () => logic.issueTasks.isNotEmpty
//     };
//   }
//
//   @override
//   Map<String, Function> bindFunction() {
//     return {
//       ...super.bindFunction(),
//       'createIssueTask': createIssueTask,
//       'onTapLinkTask': onTapLinkTask,
//       'issueTaskCount': issueTaskCount,
//       'priorityText': priorityText,
//     };
//   }
//
//   void onTapLinkTask() async {
//     FocusScope.of(context).requestFocus(FocusNode());
//     Get.bottomSheet(const IssueTasksDialog(),
//             clipBehavior: Clip.antiAlias,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r))))
//         .then((value) {
//       if (value != null) logic.addAssociationIssue(value);
//       setState(() {});
//     });
//   }
//
//   int issueTaskCount() {
//     return logic.issueTasks.length;
//   }
//
//   void createIssueTask() {
//     logic.createIssueTask();
//   }
//
//
//
//
//   String priorityText(index) {
//     return logic.issueTasks[index].priorityText ?? '';
//   }
//
//   Color priorityColor(index) {
//     return logic.issueTasks[index].priorityColor;
//   }
// }
