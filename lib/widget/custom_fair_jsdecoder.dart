import 'dart:io';
import 'package:fair/src/internal/bundle_provider.dart';
import 'package:flutter/services.dart';
import 'package:fair/src/internal/flexbuffer/fair_js_decoder_http_decoder.dart';

/*
class FairJSFairJSDecoderHelper {
  ///提取JS加载地址，assert or http
  static String? transformPath(String? beforePath) {
    if (beforePath == null) {
      // throw FlutterError('');
      return beforePath;
    }
    if (beforePath.startsWith('http')) {
      return beforePath;
    } else {
      //加载其它路径判断待定
      return '${beforePath.substring(0, beforePath.lastIndexOf('.'))}.js';
    }
  }
}

///JS资源解析器
class FairJSDecoder with FairBundlePathCheck{
  FairJSDecoder._internal();

  static final FairJSDecoder _fairJSDecoder = FairJSDecoder._internal();
  static Future<String> Function(String? jsPath)? resolve;
  factory FairJSDecoder({HttpDecoder? decoder}) {
    _httpDecoder = decoder ?? DefaultHttpDecoder();
    return _fairJSDecoder;
  }

  static HttpDecoder? _httpDecoder;

  Future<String> _resolve(String? path) async {
    if (path?.startsWith('http')==true) {
      return await _resolveHttp(path);
    } else {
      //10kb以上资源，会通过isolate的方式去实现，无需额外去操作
      //10KB takes about 3ms to parse on a Pixel 2 XL.
      return _resolveAssert(path);
    }
  }

  */
/*
   *解析assert
   *//*

  Future<String> _resolveAssert(String? assertPath) async {
    if (isExternalStoragePath(assertPath)) {
      var file = File(assertPath ?? '');
      return await file.readAsString();
    }
    return rootBundle.loadString(assertPath ?? '');
  }

  */
/*
   * 解析Http资源,需要用户自定义自己的解析器
   *//*

  Future<String> _resolveHttp(String? url) async =>
      await _httpDecoder?.decode(url);

  Future<String> decode(String? jsPath) => resolve?.call(jsPath) ?? _resolve(jsPath);
}
*/

///我们可以通过自定义 JSDecoder，来控制 js 资源从哪里获取，需不需要缓存。
Map<String?, String> _cache = <String?, String>{};

/// 自定义 js 获取方式
class CustomFairJSDecoder with FairBundlePathCheck {
  factory CustomFairJSDecoder() => _customFairJSDecoder;
  CustomFairJSDecoder._();
  static final CustomFairJSDecoder _customFairJSDecoder =
  CustomFairJSDecoder._();

  /// 自定义 js 获取方式
  Future<String> decode(String? jsPath) async {
    //
    // var byteData = null;
    // 根据自身的情况来，这个也可能从其他地方获取
    //
    // if (byteData != null) {
    //  return _cache[jsPath] ??= utf8.decode(byteData);
    // }

    return _cache[jsPath] ??= await _resolveAssert(jsPath);
  }

  Future<String> _resolveAssert(String? assertPath) async {
    if (isExternalStoragePath(assertPath)) {
      final file = File(assertPath ?? '');
      return await file.readAsString();
    }
    return rootBundle.loadString(assertPath ?? '');
  }
}
