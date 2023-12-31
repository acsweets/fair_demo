// GENERATED CODE - DO NOT MODIFY MANUALLY
// **************************************************************************
// But you can define a new GeneratedModule as following:
// class MyAppGeneratedModule extends AppGeneratedModule {
//   @override
//   Map<String, dynamic> components() {
//     return <String, dynamic>{
//       ...super.components(),
//      // add your cases here.
//     };
//   }
//
//   /// true means it's a widget.
//   @override
//   Map<String, bool> mapping() {
//     return <String, bool>{
//       ...super.mapping(),
//       // remember add your cases here too.
//     };
//   }
// }
// **************************************************************************
// Auto generated by https://github.com/wuba/Fair
// **************************************************************************
//
// ignore_for_file: implementation_imports, unused_import, depend_on_referenced_packages, unused_shown_name, duplicate_import, always_specify_types, unnecessary_import

import 'package:demo/widget/radius_inkwell_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:fair/fair.dart';
import 'package:fair_version/fair_version.dart';

class AppGeneratedModule extends GeneratedModule {
  @override
  Map<String, dynamic> components() {
    return {
      'RadiusInkWellWidget': (props) => RadiusInkWellWidget(
            key: props['key'],
            child: props['child'],
            radius: props['radius']?.toDouble(),
            borderRadius: props['borderRadius'],
            color: props['color'],
            onPressed: props['onPressed'],
            border: props['border'],
            onTapDown: props['onTapDown'],
            onLongPress: props['onLongPress'],
            onTapCancel: props['onTapCancel'],
            margin: props['margin'] ?? EdgeInsets.zero,
            padding: props['padding'] ?? EdgeInsets.zero,
            showShadow: props['showShadow'] ?? false,
            boxShadow: as<BoxShadow>(props['boxShadow']),
            shadowColor: props['shadowColor'],
            onDoubleTap: props['onDoubleTap'],
            colors: as<Color>(props['colors']) ?? const [],
            begin: props['begin'] ?? Alignment.topCenter,
            end: props['end'] ?? Alignment.bottomCenter,
            elevation: props['elevation']?.toDouble() ?? 0,
          ),
    };
  }

  @override
  Map<String, bool> mapping() {
    return const {
      'RadiusInkWellWidget': true,
    };
  }
}
