import 'package:flutter/services.dart';
import 'package:path/path.dart' as path;


// Future<void> removeIssueTasks(int index) async {
//   // issueTasks.removeAt(index);
//   // issueTasks.refresh();
//   // ByteData data = await rootBundle.load('assets/bundle/lib_modules_mutualism_task_create_task_widget_hot_update_error_hot_update.fair.json');
//   ByteData data = await rootBundle.load(path.join("assets/bundle/lib_modules_mutualism_task_create_task_widget_hot_update_error_hot_update.fair.js"));
//   // String filePath = await FlutterAbsolutePath.getAbsolutePath(asset: 'assets/filename.txt');
//   // 构建asset文件路径
//   // var assetFilePath =
//   //     'assets/bundle/lib_modules_mutualism_task_create_task_widget_hot_update_error_hot_update.fair.json';
//
//   List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//   final directory = await getApplicationDocumentsDirectory();
//   String filePath =
//       '${directory.path}/test.js';
//   await File(filePath).writeAsBytes(bytes);
//   // 检查文件是否存在
//   var fileExists = await File(filePath).exists();
//   ResourcePickerHandler handler = ResourcePickerHandler();
//
//   print(directory.path);
//   handler.uploadFile(filePath, "lib_modules_mutualism_task_create_task_widget_hot_update_error_hot_update.fair", 0);
// }