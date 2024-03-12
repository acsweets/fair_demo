// flutterVersion = '3.19.3'
// dartVersion = '3.3.1'
// functionCount = 18
// ignore_for_file: deprecated_member_use, prefer_single_quotes, unused_element, unused_field, unused_import, unnecessary_import, implementation_imports, unused_shown_name, prefer_function_declarations_over_variables, void_checks, duplicate_import, no_duplicate_case_values
import 'package:flutter/material.dart';
import 'package:demo/src/sugar/dart_core.dart';
import 'package:demo/test/lib/sugar/common.dart';
import 'package:fair/fair.dart';

/// AppFunctionDynamicWidgetBuilder
mixin AppFunctionDynamicWidgetBuilder on DynamicWidgetBuilder {
  dynamic convertAppFunction(BuildContext context, Map map, Map? methodMap,
      {Domain? domain}) {
    var name = map[tag];
    if (name == 'FairFunction') {
      var tag = FunctionDomain.getTag(map);
      switch (tag) {
        case 'Iterable<Object> Function(dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          Iterable<Object> Function(dynamic) builder = (p0) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'String Function(Match)':
          List functionPaParameters = FunctionDomain.pa(map);
          String Function(Match) builder = (p0) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'String Function(String)':
          List functionPaParameters = FunctionDomain.pa(map);
          String Function(String) builder = (p0) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'dynamic Function(dynamic, dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          dynamic Function(dynamic, dynamic) builder = (p0, p1) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0, functionPaParameters[1]: p1},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'dynamic Function(dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          dynamic Function(dynamic) builder = (p0) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'dynamic Function(dynamic, dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          dynamic Function(dynamic, dynamic) builder = (p0, p1) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0, functionPaParameters[1]: p1},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'Widget Function()':
          Widget Function() builder = () {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              domain,
            );
          };
          return builder;

        case 'bool Function()':
          bool Function() builder = () {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              domain,
            );
          };
          return builder;

        case 'bool Function(dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          bool Function(dynamic) builder = (p0) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'bool Function(dynamic, dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          bool Function(dynamic, dynamic) builder = (p0, p1) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0, functionPaParameters[1]: p1},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'dynamic Function()':
          dynamic Function() builder = () {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              domain,
            );
          };
          return builder;

        case 'dynamic Function(dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          dynamic Function(dynamic) builder = (p0) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'dynamic Function(dynamic, dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          dynamic Function(dynamic, dynamic) builder = (p0, p1) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0, functionPaParameters[1]: p1},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'dynamic Function(int)':
          List functionPaParameters = FunctionDomain.pa(map);
          dynamic Function(int) builder = (p0) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'int Function(dynamic, dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          int Function(dynamic, dynamic) builder = (p0, p1) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0, functionPaParameters[1]: p1},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'num Function(String)':
          List functionPaParameters = FunctionDomain.pa(map);
          num Function(String) builder = (p0) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'void Function(dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(dynamic) builder = (p0) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0},
                parent: domain,
              ),
            );
          };
          return builder;

        case 'void Function(dynamic, dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(dynamic, dynamic) builder = (p0, p1) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0, functionPaParameters[1]: p1},
                parent: domain,
              ),
            );
          };
          return builder;

        default:
      }
    }
    return null;
  }
}
