import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

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
    print("tag 名 $name");
    return super.convert(context, map, methodMap, domain: domain);
  }
}