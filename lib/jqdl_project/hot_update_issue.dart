// import 'package:fair/fair.dart';
// import 'package:flutter/material.dart';
//
// @FairPatch()
// class HotUpdateIssue extends StatefulWidget {
//   const HotUpdateIssue({super.key});
//
//   @override
//   State<HotUpdateIssue> createState() => _HotUpdateIssueState();
// }
//
// class _HotUpdateIssueState extends State<HotUpdateIssue> {
//   late CreateTaskLogic logic;
//   late TaskType taskType;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("问题任务"),
//       ),
//       body: SingleChildScrollView(
//         child: CreateInformation(taskType: taskType),
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
// }
