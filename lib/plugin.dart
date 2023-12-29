import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:oktoast/oktoast.dart' as oktoast;
import 'package:demo/toast_util.dart';
import 'package:fair/fair.dart';
import 'package:flutter/cupertino.dart';

import 'main.dart';
//
// /// 跟 js 交互的方法类
// class FairCommonPlugin extends IFairPlugin with  ToastPlugin {
//   factory FairCommonPlugin() => _fairCommonPlugin;
//
//   FairCommonPlugin._();
//
//   static final FairCommonPlugin _fairCommonPlugin = FairCommonPlugin._();
//
//   @override
//   Map<String, Function> getRegisterMethods() {
//     return <String, Function>{
//       'showMessageToast': showMessageToast,
//     };
//   }
// }
//
// mixin ToastPlugin implements FairCommonPluginMixin {
//   Future<dynamic> showMessageToast(dynamic map) => request(
//     map,
//         (dynamic requestMap) async {
//       final msg = requestMap['msg'];
//       showToast(text: msg);
//       return null;
//     },
//   );
// }


// 由 bin/fair_common_plugin.dart 生成


/// 跟 js 交互的方法类
class FairCommonPlugin extends IFairPlugin
    with
        CompleterPlugin,
        LaunchUrlPlugin,
        PhotoPlugin,
        FuturePlugin,
        NavigatorPlugin,
        ListenableScopePlugin,
        ToastPlugin,
        DebugPlugin,
        HttpPlugin {
  factory FairCommonPlugin() => _fairCommonPlugin;
  FairCommonPlugin._();
  static final FairCommonPlugin _fairCommonPlugin = FairCommonPlugin._();
  @override
  Map<String, Function> getRegisterMethods() {
    return <String, Function>{
      'futureComplete': futureComplete,
      'launchUrl': launchUrl,
      'savePhoto': savePhoto,
      'futureDelayed': futureDelayed,
      'navigate': navigate,
      'scrollController': scrollController,
      'animationController': animationController,
      'tabController': tabController,
      'valueNotifier': valueNotifier,
      'showToast': showToast,
      'jsPrint': jsPrint,
      'http': http,
    };
  }
}


mixin CompleterPlugin implements FairCommonPluginMixin {
  Future<dynamic> futureComplete(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      final id = requestMap['futureId'];
      final value = requestMap['futureValue'];
      _completers.remove(id)?.complete(value);
      return null;
    },
  );

  static final Map<String, Completer> _completers = <String, Completer>{};

  static Completer<T> createCompleter<T>(String futureId) =>
      _completers.putIfAbsent(
        futureId,
            () => Completer<T>(),
      ) as Completer<T>;

  static Future<T> createFuture<T>({
    String? futureId,
    Function? function,
    dynamic argument,
    Function? callback,
  }) {
    futureId ??= DateTime.now().microsecondsSinceEpoch.toString();
    if (function != null) {
      function.call({
        'futureId': futureId,
        if (argument != null) 'argument': argument,
      });
    }
    return createCompleter<T>(futureId).future
      ..then((value) {
        callback?.call(value);
      });
  }
}

mixin LaunchUrlPlugin implements FairCommonPluginMixin {
  Future<dynamic> launchUrl(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      final url = requestMap['url'];
      // url_launcher.launchUrl(Uri.parse(url));
      return null;
    },
  );
}

mixin PhotoPlugin implements FairCommonPluginMixin {
  Future<dynamic> savePhoto(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      final url = requestMap['url'];
      // var name = path.basenameWithoutExtension(url);
      //
      // final String title =
      //     '${name.isNotEmpty ? name : DateTime.now().millisecondsSinceEpoch}.jpg';
      // final Uint8List? data =
      // await getNetworkImageData(url, useCache: true);
      // final AssetEntity? imageEntity = await PhotoManager.editor.saveImage(
      //   data!,
      //   title: title,
      // );
      // return {'success': imageEntity != null};
    },
  );
}


mixin FuturePlugin implements FairCommonPluginMixin {
  Future<dynamic> futureDelayed(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      int seconds = requestMap['seconds'];
      await Future.delayed(Duration(seconds: seconds));
      return null;
    },
  );
}

mixin NavigatorPlugin implements FairCommonPluginMixin {
  /// method
  /// modeName
  /// parameter
  Future<dynamic> navigate(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      final method = requestMap['method'];
      final arguments = requestMap['arguments'];
      final routeName = requestMap['routeName'];
      final result = requestMap['result'];
      final route = requestMap['route'];

      // NavigatorState navigatorState = MyApp.navigatorKey.currentState!;
      // switch (method) {
      //   case 'pushNamed':
      //     return await navigatorState.pushNamed<dynamic>(
      //       routeName,
      //       arguments: arguments,
      //     );
      //   case 'pushReplacementNamed':
      //     return await navigatorState
      //         .pushReplacementNamed<dynamic, dynamic>(
      //       routeName,
      //       arguments: arguments,
      //       result: result,
      //     );
      //   case 'pop':
      //     navigatorState.pop<dynamic>(result);
      //     break;
      //   case 'popUntil':
      //     navigatorState.popUntil(((page) {
      //       return page.settings.name == route;
      //     }));
      //     break;
      //   default:
      // }
      return null;
    },
  );
}


/// ListenableScopePlugin
mixin ListenableScopePlugin implements FairCommonPluginMixin {
  Future<dynamic> scrollController(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      var uniqueKey = requestMap['uniqueKey'];
      var type = requestMap['type'];
      var method = requestMap['method'];
      var parameter = requestMap['parameter'];
      // var scrollController =
      // ListenableScope.get(uniqueKey, type) as ScrollController?;
      // if (scrollController != null) {
      //   switch (method) {
      //     case 'animateTo':
      //       var offset = parameter['offset'].toDouble();
      //       var duration = parameter['duration'];
      //
      //       // 从 js 过来
      //       if (duration is! Duration) {
      //         duration = Sugar.durationFromJs(duration);
      //       }
      //       var curve = parameter['curve'];
      //
      //       // Curves.bounceIn
      //       if (curve is! Curve) {
      //         curve = flutterComponents[curve.toString()];
      //       }
      //       scrollController.animateTo(
      //         offset,
      //         duration: duration,
      //         curve: curve,
      //       );
      //       break;
      //     case 'jumpTo':
      //       scrollController.jumpTo(parameter.toDouble());
      //       break;
      //     case 'get':
      //       return Sugar.dartObjectToMap(scrollController);
      //     default:
      //   }
      // }

      return null;
    },
  );

  Future<dynamic> animationController(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      var uniqueKey = requestMap['uniqueKey'];
      var type = requestMap['type'];
      var method = requestMap['method'];
      var parameter = requestMap['parameter'];
      // var animationController =
      // ListenableScope.get(uniqueKey, type) as AnimationController?;
      // if (animationController != null) {
      //   switch (method) {
      //     case 'set':
      //       animationController.value = parameter?.toDouble();
      //       break;
      //     case 'get':
      //       return Sugar.dartObjectToMap(animationController);
      //     case 'reset':
      //       animationController.reset();
      //       break;
      //     case 'forward':
      //       animationController.forward(from: parameter?.toDouble());
      //       break;
      //     case 'reverse':
      //       animationController.reverse(from: parameter?.toDouble());
      //       break;
      //     case 'repeat':
      //       var min = parameter['min']?.toDouble();
      //       var max = parameter['max']?.toDouble();
      //       var reverse = parameter['reverse'] ?? false;
      //       var period = parameter['period'];
      //       // 从 js 过来
      //       if (period != null && period is! Duration) {
      //         period = Sugar.durationFromJs(period);
      //       }
      //       animationController.repeat(
      //         min: min,
      //         max: max,
      //         reverse: reverse,
      //         period: period,
      //       );
      //       break;
      //     case 'animateBack':
      //     case 'animateTo':
      //       var target = parameter['target'].toDouble();
      //
      //       var curve = parameter['curve'];
      //       // Curves.bounceIn
      //       if (curve is! Curve) {
      //         curve = flutterComponents[curve.toString()];
      //       }
      //       var duration = parameter['duration'];
      //       // 从 js 过来
      //       if (duration != null && duration is! Duration) {
      //         duration = Sugar.durationFromJs(duration);
      //       }
      //       if (method == 'animateBack') {
      //         animationController.animateBack(
      //           target,
      //           duration: duration,
      //           curve: curve,
      //         );
      //       } else {
      //         animationController.animateTo(
      //           target,
      //           duration: duration,
      //           curve: curve,
      //         );
      //       }
      //
      //       break;
      //   // 自己根据情况实现
      //     case 'animateWith':
      //     // animationController.animateWith(Simulation());
      //       break;
      //     case 'stop':
      //       animationController.stop(canceled: parameter ?? true);
      //       break;
      //   // 不好实现
      //   // animationController.drive(child);
      //   // animationController.fling()
      //   // animationController.resync(vsync)
      //     default:
      //   }
      // }

      return null;
  },
 );

  /// uniqueKey
  /// type
  /// method
  /// parameter
  Future<dynamic> tabController(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      var uniqueKey = requestMap['uniqueKey'];
      var type = requestMap['type'];
      var method = requestMap['method'];
      var parameter = requestMap['parameter'];
      // var tabController =
      // ListenableScope.get(uniqueKey, type) as TabController?;
      // if (tabController != null) {
      //   switch (method) {
      //     case 'animateTo':
      //       tabController.animateTo(parameter);
      //       break;
      //     case 'set':
      //       tabController.index = parameter;
      //       break;
      //     case 'get':
      //       return Sugar.dartObjectToMap(tabController);
      //     default:
      //   }
      // }
      //
      // return null;
    },
  );

  Future<dynamic> valueNotifier(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      var uniqueKey = requestMap['uniqueKey'];
      var type = requestMap['type'];
      var method = requestMap['method'];
      var parameter = requestMap['parameter'];
      // var valueNotifier =
      // ListenableScope.get(uniqueKey, type) as ValueNotifier?;
      // if (valueNotifier != null) {
      //   switch (method) {
      //     case 'set':
      //       if (valueNotifier.value is double && parameter is! double) {
      //         parameter = parameter.toDouble();
      //       }
      //       valueNotifier.value = parameter;
      //       break;
      //     case 'get':
      //       return Sugar.dartObjectToMap(valueNotifier);
      //     default:
      //   }
      // }

      return null;
    },
  );
}

mixin ToastPlugin implements FairCommonPluginMixin {
  Future<dynamic> showToast(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      final msg = requestMap['msg'];
      oktoast.showToast(msg);
      return null;
    },
  );
}


mixin DebugPlugin implements FairCommonPluginMixin {
  Future<dynamic> jsPrint(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      if (kDebugMode) {
        debugPrint('来自js的参数:$requestMap');
      }
      return null;
    },
  );
}


mixin HttpPlugin implements FairCommonPluginMixin {
  Future<dynamic> http(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      final method = requestMap['method'];
      final url = requestMap['url'];
      final headers = requestMap['headers'];
      final body = requestMap['body'];
      // switch (method) {
      //   case 'GET':
      //     final Response result =
      //     await HttpClientHelper.get(Uri.parse(url)) as Response;
      //     return {
      //       'json': jsonDecode(result.body),
      //       // 'bodyBytes': result.bodyBytes,
      //       'statusCode': result.statusCode,
      //     };
      //   case 'POST':
      //     final Response result = await HttpClientHelper.post(
      //       Uri.parse(url),
      //       headers: headers,
      //       body: body,
      //     ) as Response;
      //     return {
      //       'json': jsonDecode(result.body),
      //       // 'bodyBytes': result.bodyBytes,
      //       'statusCode': result.statusCode,
      //     };
      //   default:
      // }

      return null;
    },
  );
}
