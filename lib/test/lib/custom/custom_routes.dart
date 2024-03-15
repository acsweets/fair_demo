import 'dart:convert';
import 'package:fair/fair.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "regular_dynamic_page": (context) =>
      FairWidget(path: _getParams(context, "path"), data: {'fairProps': jsonEncode(_getParams(context, 'data'))})
};

/// 路由 跳转时会存在ModalRouter配置里
///因为routers构建页面通过WidgetBuild 构建会拿到上下文，ModalRoute.of(context) 可以通过上下文拿到路由,
dynamic _getParams(BuildContext context, String key) => (ModalRoute.of(context)?.settings.arguments is Map)
    ? (ModalRoute.of(context)?.settings.arguments as Map)[key]
    : null;
