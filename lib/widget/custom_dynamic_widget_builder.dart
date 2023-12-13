import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
///"itemBuilder": {
///           "className": "FairFunction",
///           "body": {
///             "className": "Text",
///             "pa": [
///               "#($item)"
///             ]
///           },
///           "parameters": {
///             "pa": [
///               "context",
///              "item",
///              "index"
///             ]
///           },
///           "tag": "Widget Function(BuildContext, dynamic, int)",
///           "rt": "Widget"
///         },
///         "sourceList": "^(_loadingMoreRepository)"
///      }

///可以看到 itemBuilder 生成了一个 FairFunction。
//
/// body为该回调方法返回的内容，是一个文本
/// parameters 为该回调方法的参数，这里为啥需要生成参数呢？ 因为参数(位置参数)的名字是可以随意改变的(命名参数的名字不可以改变)。
///tag 为该回调方法的唯一标识，这个就是我们用来做匹配的。
/// rt(return type) 为该回调方法的返回类型。

class CustomDynamicWidgetBuilder extends DynamicWidgetBuilder {
  CustomDynamicWidgetBuilder(
      super.proxyMirror,
      super.page,
      super.bound, {
        super.bundle,
      });
  @override
  dynamic convert(BuildContext context, Map map, Map? methodMap,
      {Domain? domain}) {
    // tag 就是 className
    // var name = map[tag];
    // switch (name) {
    //   case 'FairFunction':
    //   var tag = FunctionDomain.getTag(map);
    //     switch (tag) {
    //     // typedef LoadingMoreItemBuilder<in T> = Widget Function(BuildContext context, T item, int index)
    //     // package:loading_more_list/src/list_config/loading_more_list_config.dart
    //       case 'Widget Function(BuildContext, dynamic, int)':
    //         List functionPaParameters = FunctionDomain.pa(map);
    //         builder(p0, p1, p2) {
    //           return pa0Value(
    //             FunctionDomain.getBody(map),
    //             methodMap,
    //             context,
    //             FunctionDomain(
    //               {
    //                 functionPaParameters[0]: p0,
    //                 functionPaParameters[1]: p1,
    //                 functionPaParameters[2]: p2
    //               },
    //               parent: domain,
    //             ),
    //           );
    //         }
    //         return builder;
    //     }
    //     break;
    //   default:
    // }
    return super.convert(context, map, methodMap, domain: domain);
  }
}
// ignore_for_file: implementation_imports, prefer_function_declarations_over_variables, void_checks

//新的 DynamicWidgetBuilder 将变成这样。方法域的使用

// class CustomDynamicWidgetBuilder1 extends DynamicWidgetBuilder
//     with
//         AppFunctionDynamicWidgetBuilder,
//         PackagesFunctionDynamicWidgetBuilder,
//         FlutterFunctionDynamicWidgetBuilder {
//   CustomDynamicWidgetBuilder1(
//       super.proxyMirror,
//       super.page,
//       super.bound, {
//         super.bundle,
//       });
//   @override
//   dynamic convert(BuildContext context, Map map, Map? methodMap,
//       {Domain? domain}) {
//     var name = map[tag];
//
//     switch (name) {
//       case 'FairFunction':
//         var appFunction =
//         convertAppFunction(context, map, methodMap, domain: domain);
//         if (appFunction != null) {
//           return appFunction;
//         }
//         var packagesFunction =
//         convertPackagesFunction(context, map, methodMap, domain: domain);
//         if (packagesFunction != null) {
//           return packagesFunction;
//         }
//         var flutterFunction =
//         convertFlutterFunction(context, map, methodMap, domain: domain);
//         if (flutterFunction != null) {
//           return flutterFunction;
//         }
//         var tag = FunctionDomain.getTag(map);
//         switch (tag) {
//           default:
//         }
//         break;
//     }
//     return super.convert(context, map, methodMap, domain: domain);
//   }
// }
