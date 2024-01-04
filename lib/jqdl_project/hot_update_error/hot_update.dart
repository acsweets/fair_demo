// import 'package:cses_saas/cses_saas.dart';
// import 'package:cses_saas/modules/mutualism/task/create_task/widget/testpage_fair_delegate.dart';
// import 'package:fair/fair.dart';
// import 'package:flutter/material.dart';
//
// @FairPatch()
// class HotUpdate extends StatefulWidget {
//   const HotUpdate({
//     super.key,
//   });
//
//   @override
//   State<HotUpdate> createState() => _HotUpdateState();
// }
//
// class _HotUpdateState extends State<HotUpdate> {
//   final String _pageName = '#FairKey#';
//
//   late CreateTaskLogic logic;
//   late TaskType taskType;
//   late bool showLinkTask;
//   late ScrollPhysics scrollPhysics;
//   var title;
//
//   onLoad() {
//     title ='';
//   }
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
//             CreateInformation(taskType: taskType),
//             SingleButtonView(
//                 margin: const EdgeInsets.symmetric(horizontal: 15),
//                 title: '连接问题',
//                 visibleChild: showLinkTask,
//                 children: [
//                   ListView.builder(
//                     itemCount: issueTaskCount(),
//                     itemBuilder: Sugar.indexedWidgetBuilder(
//                       (context, index) {
//                         return Wrap(
//                           children: [
//                             RichText(
//                                 text: TextSpan(text: title, style: const TextStyle(color: Colors.blue), children: [
//                               WidgetSpan(
//                                 child: SizedBox(
//                                   height: 30,
//                                   child: IconButton(
//                                     onPressed: () => _removeIssueTasks(index),
//                                     icon: const Icon(Icons.close, color: Colors.red),
//                                   ),
//                                 ),
//                               )
//                             ])),
//                           ],
//                         );
//                       },
//                     ),
//                     shrinkWrap: true,
//                     physics: scrollPhysics,
//                   ),
//                 ],
//                 onPressed: () => onTapLinkTask()),
//           ],
//         ),
//       ),
//       bottomNavigationBar: RadiusInkWellWidget(
//           margin: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
//           onPressed: () => createIssueTask(),
//           radius: 10,
//           child: Container(
//               alignment: Alignment.center,
//               padding: const EdgeInsets.symmetric(horizontal: 40),
//               height: 45,
//               child: const Text('创建任务',
//                   style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)))),
//     );
//   }
//
//   void createIssueTask() {}
//
//   void onTapLinkTask() async {}
//
//   void _removeIssueTasks(index) async {
//     FairCommonPlugin().remove({
//       'pageName': _pageName,
//       'index': index,
//     });
//   }
//
//
//
//
//   int issueTaskCount() {
//     return logic.issueTasks.length;
//   }
// }
