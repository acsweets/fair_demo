// import 'package:fair/fair.dart';
//
//
// class HotUpdateIssueDelegate extends FairDelegate {
//   CreateTaskLogic get logic => Get.find<CreateTaskLogic>(tag: TaskType.issue.toString());
//
//   @override
//   void initState() {
//     super.initState();
//     onLoad();
//   }
//
//   void onLoad() {
//   }
//
//   @override
//   Map<String, PropertyValue> bindValue() {
//     return {
//       ...super.bindValue(),
//       // key 跟页面上面的名字一致
//       'logic': () => logic,
//       'taskType': () => TaskType.issue,
//     };
//   }
//
//   @override
//   Map<String, Function> bindFunction() {
//     return {
//       ...super.bindFunction(),
//       'createIssueTask': createIssueTask,
//     };
//   }
//
//   void createIssueTask() {
//     logic.createIssueTask();
//   }
//
// }
