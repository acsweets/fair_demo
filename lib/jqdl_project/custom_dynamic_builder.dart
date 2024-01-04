import 'dart:convert';

import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:fair/src/internal/bundle_provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:fair/src/internal/fair_decoder.dart';


class CustomDynamicWidgetBuilder extends DynamicWidgetBuilder {
  CustomDynamicWidgetBuilder(
    super.proxyMirror,
    super.page,
    super.bound, {
    super.bundle,
  });

  @override
  dynamic convert(BuildContext context, Map map, Map? methodMap, {Domain? domain}) {
    var name = map[tag];

    ///tag的本质是传入的className
    if (name == "data") {
      print("=====================api${map}========================");
      return;
    }
    if (name == "Tab") {
      print("=====================api${Tab}========================");
      return;
    }
    print(
        "解析的    methodMap$methodMap =========map$map========== ${name}=========================== ${domain}===================");

    return super.convert(context, map, methodMap, domain: domain);
  }
}

Map<String?, String> _cache = <String?, String>{};
Map<String?, Map?> _cacheJson = <String?, Map?>{};

/// 自定义 js 获取方式
class CustomFairJSDecoder with FairBundlePathCheck {
  factory CustomFairJSDecoder() => _customFairJSDecoder;

  CustomFairJSDecoder._();

  static final CustomFairJSDecoder _customFairJSDecoder = CustomFairJSDecoder._();

  static const BYTES_LIMIT = 10 * 1024;
  static const STRING_LIMIT = 10 * 1024 / 8;

  Future<String> _decode(String? url) async {
    var start = DateTime.now().millisecondsSinceEpoch;
    // var response = await HttpManager().get(Uri.parse(url??''));
    var response = await Dio().get(url ?? '');
    var end = DateTime.now().millisecondsSinceEpoch;
    print('end1 ${end - start}');
    if (response.statusCode != 200) {
      throw FlutterError('加载JS网络路径Code =${response.statusCode},RemoteUrl: $url');
    }
    var end2 = DateTime.now().millisecondsSinceEpoch;
    print('end ${end2 - start}');
    var data = response.data;
    if (data == null) {
      throw FlutterError('bodyBytes=null, RemoteUrl : $url');
    }
    //解析字节流
    return _resolveResult(data);
  }

  Future<String> _resolveResult(dynamic data) async {
    String result;
    if (data is Uint8List) {
      if (data.lengthInBytes < BYTES_LIMIT) {
        result = utf8.decode(data);
      } else {
        result = await compute(_toString, data, debugLabel: 'json decode');
      }
    } else {
      result = data as String;
    }
    return result;
  }

  String _toString(Uint8List data) {
    return utf8.decode(data);
  }

  Future<String> _resolveAssert(String? assertPath) async {
    if (isExternalStoragePath(assertPath)) {
      var file = File(assertPath ?? '');
      return await file.readAsString();
    }
    return rootBundle.loadString(assertPath ?? '');
  }

  Future<String> _resolve(String? path) async {
    if (path?.startsWith('http') == true) {
      return await _decode(path);
    } else {
      //10kb以上资源，会通过isolate的方式去实现，无需额外去操作
      //10KB takes about 3ms to parse on a Pixel 2 XL.
      return _resolveAssert(path);
    }
  }

  Future<String> decode(String? jsPath) => _resolve(jsPath);
}

//自定义的资源加载
class CustomFairBundleLoader extends FairBundleProvider {
  @override
  Future<Map?> onLoad(
    String? path,
    FairDecoder decoder, {
    bool cache = true,
    Map<String, String>? h,
  }) async {
    //
    // var byteData = null;
    // if (byteData != null) {
    //   //
    // }
    // else
    // {
    // 根据自身的情况来，这个也可能从其他地方获取
    // 缓存的是 path 对应的 map
    return _cacheJson[path] ??= await super.onLoad(
      path,
      decoder,
      cache: cache,
      h: h,
    );
  }
//}
}

//}
