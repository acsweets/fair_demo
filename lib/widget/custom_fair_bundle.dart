// ignore_for_file: implementation_imports

import 'dart:typed_data';

import 'package:fair/src/internal/fair_decoder.dart';

import 'package:fair/src/internal/bundle_provider.dart';

Map<String?, Map?> _cache = <String?, Map?>{};
///我们可以自定义 FairBundleProvider ，来决定 bin/json 文件的来源，以及解析，决定是否要缓存解析结果。其中的 decode 的 isFlexBuffer 代表是 bin 文件还是 json 文件。
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
    return _cache[path] ??= await super.onLoad(
      path,
      decoder,
      cache: cache,
      h: h,
    );
  }
  //}

  @override
  Future<Map<dynamic, dynamic>> decode(
      FairDecoder decoder, Uint8List data, bool isFlexBuffer) {
    return super.decode(decoder, data, isFlexBuffer);
  }
}
