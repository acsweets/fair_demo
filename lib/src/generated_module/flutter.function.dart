// flutterVersion = '3.16.0'
// dartVersion = '3.2.0'
// functionCount = 172
// ignore_for_file: deprecated_member_use, prefer_single_quotes, unused_element, unused_field, unused_import, unnecessary_import, implementation_imports, unused_shown_name, prefer_function_declarations_over_variables, void_checks, duplicate_import, no_duplicate_case_values
import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' show Quad;

import 'package:fair/fair.dart';

/// FlutterFunctionDynamicWidgetBuilder
mixin FlutterFunctionDynamicWidgetBuilder on DynamicWidgetBuilder {
  dynamic convertFlutterFunction(BuildContext context, Map map, Map? methodMap,
      {Domain? domain}) {
    var name = map[tag];
    if (name == 'FairFunction') {
      var tag = FunctionDomain.getTag(map);
      switch (tag) {
        // typedef BoxConstraintsTransform = BoxConstraints Function(BoxConstraints )
        // package:flutter/src/rendering/shifted_box.dart
        case 'BoxConstraints Function(BoxConstraints)':
          List functionPaParameters = FunctionDomain.pa(map);
          BoxConstraints Function(BoxConstraints) builder = (p0) {
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
        // typedef AppExitRequestCallback = Future<AppExitResponse> Function()
        // art_tool/flutter/lib/src/widgets/app_lifecycle_listener.dart
        case 'Future<AppExitResponse> Function()':
          Future<AppExitResponse> Function() builder = () {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              domain,
            );
          };
          return builder;
        // typedef WillPopCallback = Future<bool> Function()
        // art_tool/flutter/lib/src/widgets/navigator.dart
        case 'Future<bool> Function()':
          Future<bool> Function() builder = () {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              domain,
            );
          };
          return builder;
        // typedef ConfirmDismissCallback = Future<bool?> Function(DismissDirection direction)
        // art_tool/flutter/lib/src/widgets/dismissible.dart
        case 'Future<bool?> Function(DismissDirection)':
          List functionPaParameters = FunctionDomain.pa(map);
          Future<bool?> Function(DismissDirection) builder = (p0) {
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
        // typedef AsyncCallback = Future<void> Function()
        // package:flutter/src/foundation/basic_types.dart
        case 'Future<void> Function()':
          Future<void> Function() builder = () {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              domain,
            );
          };
          return builder;
        // typedef AutocompleteOptionsBuilder<out T extends Object> = FutureOr<Iterable<T>> Function(TextEditingValue textEditingValue)
        // art_tool/flutter/lib/src/widgets/autocomplete.dart
        case 'FutureOr<Iterable<Object>> Function(TextEditingValue)':
          List functionPaParameters = FunctionDomain.pa(map);
          FutureOr<Iterable<Object>> Function(TextEditingValue) builder = (p0) {
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
        // typedef SuggestionsBuilder = FutureOr<Iterable<Widget>> Function(BuildContext context, SearchController controller)
        // art_tool/flutter/lib/src/material/search_anchor.dart
        case 'FutureOr<Iterable<Widget>> Function(BuildContext, SearchController)':
          List functionPaParameters = FunctionDomain.pa(map);
          FutureOr<Iterable<Widget>> Function(BuildContext, SearchController)
              builder = (p0, p1) {
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

        case 'FutureOr<void> Function()':
          FutureOr<void> Function() builder = () {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              domain,
            );
          };
          return builder;
        // typedef MouseTrackerHitTest = HitTestResult Function(Offset offset, int viewId)
        // art_tool/flutter/lib/src/rendering/mouse_tracker.dart
        case 'HitTestResult Function(Offset, int)':
          List functionPaParameters = FunctionDomain.pa(map);
          HitTestResult Function(Offset, int) builder = (p0, p1) {
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
        // typedef InformationCollector = Iterable<DiagnosticsNode> Function()
        // package:flutter/src/foundation/assertions.dart
        case 'Iterable<DiagnosticsNode> Function()':
          Iterable<DiagnosticsNode> Function() builder = () {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              domain,
            );
          };
          return builder;
        // typedef IterableFilter<inout T> = Iterable<T> Function(Iterable<T> input)
        // art_tool/flutter/lib/src/foundation/basic_types.dart
        case 'Iterable<String> Function(Iterable<String>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Iterable<String> Function(Iterable<String>) builder = (p0) {
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
        // typedef FocusOnKeyEventCallback = KeyEventResult Function(FocusNode node, KeyEvent event)
        // art_tool/flutter/lib/src/widgets/focus_manager.dart
        case 'KeyEventResult Function(FocusNode, KeyEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          KeyEventResult Function(FocusNode, KeyEvent) builder = (p0, p1) {
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
        // typedef FocusOnKeyCallback = KeyEventResult Function(FocusNode node, RawKeyEvent event)
        // art_tool/flutter/lib/src/widgets/focus_manager.dart
        case 'KeyEventResult Function(FocusNode, RawKeyEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          KeyEventResult Function(FocusNode, RawKeyEvent) builder = (p0, p1) {
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
        // typedef PopupMenuItemBuilder<out T> = List<PopupMenuEntry<T>> Function(BuildContext context)
        // art_tool/flutter/lib/src/material/popup_menu.dart
        case 'List<PopupMenuEntry<dynamic>> Function(BuildContext)':
          List functionPaParameters = FunctionDomain.pa(map);
          List<PopupMenuEntry<Object>> Function(BuildContext) builder = (p0) {
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
        // typedef RouteListFactory = List<Route<dynamic>> Function(NavigatorState navigator, String initialRoute)
        // art_tool/flutter/lib/src/widgets/navigator.dart
        case 'List<Route<dynamic>> Function(NavigatorState, String)':
          List functionPaParameters = FunctionDomain.pa(map);
          List<Route<dynamic>> Function(NavigatorState, String) builder =
              (p0, p1) {
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
        // typedef InitialRouteListFactory = List<Route<dynamic>> Function(String initialRoute)
        // art_tool/flutter/lib/src/widgets/app.dart
        case 'List<Route<dynamic>> Function(String)':
          List functionPaParameters = FunctionDomain.pa(map);
          List<Route<dynamic>> Function(String) builder = (p0) {
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
        // typedef DropdownButtonBuilder = List<Widget> Function(BuildContext context)
        // art_tool/flutter/lib/src/material/dropdown.dart
        case 'List<Widget> Function(BuildContext)':
          List functionPaParameters = FunctionDomain.pa(map);
          List<Widget> Function(BuildContext) builder = (p0) {
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
        // typedef NestedScrollViewHeaderSliversBuilder = List<Widget> Function(BuildContext context, bool innerBoxIsScrolled)
        // art_tool/flutter/lib/src/widgets/nested_scroll_view.dart
        case 'List<Widget> Function(BuildContext, bool)':
          List functionPaParameters = FunctionDomain.pa(map);
          List<Widget> Function(BuildContext, bool) builder = (p0, p1) {
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
        // typedef LocaleListResolutionCallback = Locale? Function(List<Locale>? locales, Iterable<Locale> supportedLocales)
        // art_tool/flutter/lib/src/widgets/app.dart
        case 'Locale? Function(List<Locale>?, Iterable<Locale>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Locale? Function(List<Locale>?, Iterable<Locale>) builder = (p0, p1) {
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
        // typedef LocaleResolutionCallback = Locale? Function(Locale? locale, Iterable<Locale> supportedLocales)
        // art_tool/flutter/lib/src/widgets/app.dart
        case 'Locale? Function(Locale?, Iterable<Locale>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Locale? Function(Locale?, Iterable<Locale>) builder = (p0, p1) {
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
        // typedef NavigatorFinderCallback = NavigatorState Function(BuildContext context)
        // art_tool/flutter/lib/src/widgets/navigator.dart
        case 'NavigatorState Function(BuildContext)':
          List functionPaParameters = FunctionDomain.pa(map);
          NavigatorState Function(BuildContext) builder = (p0) {
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
        // typedef OnInvokeCallback<in T extends Intent> = Object? Function(T intent)
        // art_tool/flutter/lib/src/widgets/actions.dart
        case 'Object? Function(Object)':
          List functionPaParameters = FunctionDomain.pa(map);
          Object? Function(Object) builder = (p0) {
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
        // typedef DragAnchorStrategy = Offset Function(Draggable<Object> draggable, BuildContext context, Offset position)
        // art_tool/flutter/lib/src/widgets/drag_target.dart
        case 'Offset Function(Draggable<Object>, BuildContext, Offset)':
          List functionPaParameters = FunctionDomain.pa(map);
          Offset Function(Draggable<Object>, BuildContext, Offset) builder =
              (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef PageRouteFactory = PageRoute<T> Function<T>(RouteSettings settings, Widget Function(BuildContext) builder)
        // art_tool/flutter/lib/src/widgets/app.dart
        case 'PageRoute<T> Function<T>(RouteSettings, Widget Function(BuildContext))':
          List functionPaParameters = FunctionDomain.pa(map);
          PageRoute<T> Function<T>(RouteSettings, Widget Function(BuildContext))
              builder = <T>(p0, p1) {
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
        // typedef CreatePlatformViewCallback = PlatformViewController Function(PlatformViewCreationParams params)
        // art_tool/flutter/lib/src/widgets/platform_view.dart
        case 'PlatformViewController Function(PlatformViewCreationParams)':
          List functionPaParameters = FunctionDomain.pa(map);
          PlatformViewController Function(PlatformViewCreationParams) builder =
              (p0) {
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
        // typedef RectCallback = Rect Function()
        // art_tool/flutter/lib/src/material/material.dart
        case 'Rect Function()':
          Rect Function() builder = () {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              domain,
            );
          };
          return builder;
        // typedef RestorableRouteBuilder<out T> = Route<T> Function(BuildContext context, Object? arguments)
        // art_tool/flutter/lib/src/widgets/navigator.dart
        case 'Route<Object> Function(BuildContext, Object?)':
          List functionPaParameters = FunctionDomain.pa(map);
          Route<Object> Function(BuildContext, Object?) builder = (p0, p1) {
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
        // typedef RouteFactory = Route<dynamic>? Function(RouteSettings settings)
        // art_tool/flutter/lib/src/widgets/navigator.dart
        case 'Route<dynamic>? Function(RouteSettings)':
          List functionPaParameters = FunctionDomain.pa(map);
          Route<dynamic>? Function(RouteSettings) builder = (p0) {
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
        // typedef ShaderCallback = Shader Function(Rect bounds)
        // package:flutter/src/rendering/proxy_box.dart
        case 'Shader Function(Rect)':
          List functionPaParameters = FunctionDomain.pa(map);
          Shader Function(Rect) builder = (p0) {
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
        // typedef GenerateAppTitle = String Function(BuildContext context)
        // art_tool/flutter/lib/src/widgets/app.dart
        case 'String Function(BuildContext)':
          List functionPaParameters = FunctionDomain.pa(map);
          String Function(BuildContext) builder = (p0) {
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
        // typedef RoutePresentationCallback = String Function(NavigatorState navigator, Object? arguments)
        // art_tool/flutter/lib/src/widgets/navigator.dart
        case 'String Function(NavigatorState, Object?)':
          List functionPaParameters = FunctionDomain.pa(map);
          String Function(NavigatorState, Object?) builder = (p0, p1) {
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
        // typedef AutocompleteOptionToString<in T extends Object> = String Function(T option)
        // art_tool/flutter/lib/src/widgets/autocomplete.dart
        case 'String Function(Object)':
          List functionPaParameters = FunctionDomain.pa(map);
          String Function(Object) builder = (p0) {
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
        // typedef SemanticFormatterCallback = String Function(double value)
        // art_tool/flutter/lib/src/material/slider_theme.dart
        case 'String Function(double)':
          List functionPaParameters = FunctionDomain.pa(map);
          String Function(double) builder = (p0) {
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
        // typedef FormFieldValidator<in T> = String? Function(T? value)
        // package:flutter/src/widgets/form.dart
        case 'String? Function(String?)':
          List functionPaParameters = FunctionDomain.pa(map);
          String? Function(String?) builder = (p0) {
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
        // typedef FormFieldValidator<in T> = String? Function(T? value)
        // art_tool/flutter/lib/src/widgets/form.dart
        case 'String? Function(dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          String? Function(dynamic) builder = (p0) {
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
        // typedef GestureRecognizerFactoryConstructor<out T extends GestureRecognizer> = T Function()
        // art_tool/flutter/lib/src/widgets/gesture_detector.dart
        case 'GestureRecognizer Function()':
          GestureRecognizer Function() builder = () {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              domain,
            );
          };
          return builder;
        // typedef ComputePropertyValueCallback<out T> = T? Function()
        // art_tool/flutter/lib/src/foundation/diagnostics.dart
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
        // typedef RangeThumbSelector = Thumb? Function(TextDirection textDirection, RangeValues values, double tapValue, Size thumbSize, Size trackSize, double dx)
        // art_tool/flutter/lib/src/material/slider_theme.dart
        case 'Thumb? Function(TextDirection, RangeValues, double, Size, Size, double)':
          List functionPaParameters = FunctionDomain.pa(map);
          Thumb? Function(
                  TextDirection, RangeValues, double, Size, Size, double)
              builder = (p0, p1, p2, p3, p4, p5) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2,
                  functionPaParameters[3]: p3,
                  functionPaParameters[4]: p4,
                  functionPaParameters[5]: p5
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef CreateRectTween = Tween<Rect?> Function(Rect? begin, Rect? end)
        // art_tool/flutter/lib/src/widgets/heroes.dart
        case 'Tween<Rect?> Function(Rect?, Rect?)':
          List functionPaParameters = FunctionDomain.pa(map);
          Tween<Rect?> Function(Rect?, Rect?) builder = (p0, p1) {
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
        // typedef SharedAppDataInitCallback<out T> = T Function()
        // art_tool/flutter/lib/src/widgets/shared_app_data.dart
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
        // typedef WidgetBuilder = Widget Function(BuildContext context)
        // art_tool/flutter/lib/src/widgets/framework.dart
        case 'Widget Function(BuildContext)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext) builder = (p0) {
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
        // typedef CupertinoContextMenuBuilder = Widget Function(BuildContext context, Animation<double> animation)
        // art_tool/flutter/lib/src/cupertino/context_menu.dart
        case 'Widget Function(BuildContext, Animation<double>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Animation<double>) builder = (p0, p1) {
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
        // typedef RoutePageBuilder = Widget Function(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation)
        // art_tool/flutter/lib/src/widgets/routes.dart
        case 'Widget Function(BuildContext, Animation<double>, Animation<double>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Animation<double>, Animation<double>)
              builder = (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef RouteTransitionsBuilder = Widget Function(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child)
        // art_tool/flutter/lib/src/widgets/routes.dart
        case 'Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(
                  BuildContext, Animation<double>, Animation<double>, Widget)
              builder = (p0, p1, p2, p3) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2,
                  functionPaParameters[3]: p3
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef HeroFlightShuttleBuilder = Widget Function(BuildContext flightContext, Animation<double> animation, HeroFlightDirection flightDirection, BuildContext fromHeroContext, BuildContext toHeroContext)
        // art_tool/flutter/lib/src/widgets/heroes.dart
        case 'Widget Function(BuildContext, Animation<double>, HeroFlightDirection, BuildContext, BuildContext)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Animation<double>, HeroFlightDirection,
              BuildContext, BuildContext) builder = (p0, p1, p2, p3, p4) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2,
                  functionPaParameters[3]: p3,
                  functionPaParameters[4]: p4
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef ContextMenuPreviewBuilder = Widget Function(BuildContext context, Animation<double> animation, Widget child)
        // art_tool/flutter/lib/src/cupertino/context_menu.dart
        case 'Widget Function(BuildContext, Animation<double>, Widget)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Animation<double>, Widget) builder =
              (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef AnimatedTransitionBuilder = Widget Function(BuildContext context, Animation<double> animation, Widget? child)
        // art_tool/flutter/lib/src/widgets/dual_transition_builder.dart
        case 'Widget Function(BuildContext, Animation<double>, Widget?)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Animation<double>, Widget?) builder =
              (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef AsyncWidgetBuilder<in T> = Widget Function(BuildContext context, AsyncSnapshot<T> snapshot)
        // art_tool/flutter/lib/src/widgets/async.dart
        case 'Widget Function(BuildContext, AsyncSnapshot<Object>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, AsyncSnapshot<Object>) builder =
              (p0, p1) {
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

        case 'Widget Function(BuildContext, BoxConstraints)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, BoxConstraints) builder = (p0, p1) {
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
        // typedef ControlsWidgetBuilder = Widget Function(BuildContext context, ControlsDetails details)
        // art_tool/flutter/lib/src/material/stepper.dart
        case 'Widget Function(BuildContext, ControlsDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, ControlsDetails) builder = (p0, p1) {
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
        // typedef EditableTextContextMenuBuilder = Widget Function(BuildContext context, EditableTextState editableTextState)
        // art_tool/flutter/lib/src/widgets/editable_text.dart
        case 'Widget Function(BuildContext, EditableTextState)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, EditableTextState) builder = (p0, p1) {
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
        // typedef DragTargetBuilder<in T> = Widget Function(BuildContext context, List<T?> candidateData, List<dynamic> rejectedData)
        // art_tool/flutter/lib/src/widgets/drag_target.dart
        case 'Widget Function(BuildContext, List<dynamic>, List<dynamic>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, List<dynamic>, List<dynamic>) builder =
              (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef MenuAnchorChildBuilder = Widget Function(BuildContext context, MenuController controller, Widget? child)
        // art_tool/flutter/lib/src/material/menu_anchor.dart
        case 'Widget Function(BuildContext, MenuController, Widget?)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, MenuController, Widget?) builder =
              (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef ImageErrorWidgetBuilder = Widget Function(BuildContext context, Object error, StackTrace? stackTrace)
        // art_tool/flutter/lib/src/widgets/image.dart
        case 'Widget Function(BuildContext, Object, StackTrace?)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Object, StackTrace?) builder =
              (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef CupertinoToolbarBuilder = Widget Function(BuildContext context, Offset anchor, bool isAbove, Widget child)
        // art_tool/flutter/lib/src/cupertino/text_selection_toolbar.dart
        case 'Widget Function(BuildContext, Offset, bool, Widget)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Offset, bool, Widget) builder =
              (p0, p1, p2, p3) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2,
                  functionPaParameters[3]: p3
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef OrientationWidgetBuilder = Widget Function(BuildContext context, Orientation orientation)
        // art_tool/flutter/lib/src/widgets/orientation_builder.dart
        case 'Widget Function(BuildContext, Orientation)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Orientation) builder = (p0, p1) {
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
        // typedef PlatformViewSurfaceFactory = Widget Function(BuildContext context, PlatformViewController controller)
        // art_tool/flutter/lib/src/widgets/platform_view.dart
        case 'Widget Function(BuildContext, PlatformViewController)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, PlatformViewController) builder =
              (p0, p1) {
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
        // typedef InteractiveViewerWidgetBuilder = Widget Function(BuildContext context, Quad viewport)
        // art_tool/flutter/lib/src/widgets/interactive_viewer.dart
        case 'Widget Function(BuildContext, Quad)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Quad) builder = (p0, p1) {
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
        // typedef RefreshControlIndicatorBuilder = Widget Function(BuildContext context, RefreshIndicatorMode refreshState, double pulledExtent, double refreshTriggerPullDistance, double refreshIndicatorExtent)
        // art_tool/flutter/lib/src/cupertino/refresh.dart
        case 'Widget Function(BuildContext, RefreshIndicatorMode, double, double, double)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(
                  BuildContext, RefreshIndicatorMode, double, double, double)
              builder = (p0, p1, p2, p3, p4) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2,
                  functionPaParameters[3]: p3,
                  functionPaParameters[4]: p4
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef ScrollableWidgetBuilder = Widget Function(BuildContext context, ScrollController scrollController)
        // art_tool/flutter/lib/src/widgets/draggable_scrollable_sheet.dart
        case 'Widget Function(BuildContext, ScrollController)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, ScrollController) builder = (p0, p1) {
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
        // typedef SearchAnchorChildBuilder = Widget Function(BuildContext context, SearchController controller)
        // art_tool/flutter/lib/src/material/search_anchor.dart
        case 'Widget Function(BuildContext, SearchController)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, SearchController) builder = (p0, p1) {
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
        // typedef SelectableRegionContextMenuBuilder = Widget Function(BuildContext context, SelectableRegionState selectableRegionState)
        // art_tool/flutter/lib/src/widgets/selectable_region.dart
        case 'Widget Function(BuildContext, SelectableRegionState)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, SelectableRegionState) builder =
              (p0, p1) {
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
        // typedef HeroPlaceholderBuilder = Widget Function(BuildContext context, Size heroSize, Widget child)
        // art_tool/flutter/lib/src/widgets/heroes.dart
        case 'Widget Function(BuildContext, Size, Widget)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Size, Widget) builder = (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;

        case 'Widget Function(BuildContext, SliverConstraints)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, SliverConstraints) builder = (p0, p1) {
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
        // typedef MenuAcceleratorChildBuilder = Widget Function(BuildContext context, String label, int index)
        // art_tool/flutter/lib/src/material/menu_anchor.dart
        case 'Widget Function(BuildContext, String, int)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, String, int) builder = (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef ValueWidgetBuilder<in T> = Widget Function(BuildContext context, T value, Widget? child)
        // art_tool/flutter/lib/src/widgets/value_listenable_builder.dart
        case 'Widget Function(BuildContext, dynamic, Widget?)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, dynamic, Widget?) builder =
              (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef AutocompleteFieldViewBuilder = Widget Function(BuildContext context, TextEditingController textEditingController, FocusNode focusNode, void Function() onFieldSubmitted)
        // art_tool/flutter/lib/src/widgets/autocomplete.dart
        case 'Widget Function(BuildContext, TextEditingController, FocusNode, void Function())':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, TextEditingController, FocusNode,
              void Function()) builder = (p0, p1, p2, p3) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2,
                  functionPaParameters[3]: p3
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef ViewportBuilder = Widget Function(BuildContext context, ViewportOffset position)
        // art_tool/flutter/lib/src/widgets/scrollable.dart
        case 'Widget Function(BuildContext, ViewportOffset)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, ViewportOffset) builder = (p0, p1) {
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
        // typedef TwoDimensionalViewportBuilder = Widget Function(BuildContext context, ViewportOffset verticalPosition, ViewportOffset horizontalPosition)
        // art_tool/flutter/lib/src/widgets/scrollable.dart
        case 'Widget Function(BuildContext, ViewportOffset, ViewportOffset)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, ViewportOffset, ViewportOffset)
              builder = (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef ToolbarBuilder = Widget Function(BuildContext context, Widget child)
        // package:flutter/src/widgets/text_selection.dart
        case 'Widget Function(BuildContext, Widget)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Widget) builder = (p0, p1) {
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
        // typedef ImageLoadingBuilder = Widget Function(BuildContext context, Widget child, ImageChunkEvent? loadingProgress)
        // art_tool/flutter/lib/src/widgets/image.dart
        case 'Widget Function(BuildContext, Widget, ImageChunkEvent?)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Widget, ImageChunkEvent?) builder =
              (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef ImageFrameBuilder = Widget Function(BuildContext context, Widget child, int? frame, bool wasSynchronouslyLoaded)
        // art_tool/flutter/lib/src/widgets/image.dart
        case 'Widget Function(BuildContext, Widget, int?, bool)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Widget, int?, bool) builder =
              (p0, p1, p2, p3) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2,
                  functionPaParameters[3]: p3
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef TransitionBuilder = Widget Function(BuildContext context, Widget? child)
        // art_tool/flutter/lib/src/widgets/framework.dart
        case 'Widget Function(BuildContext, Widget?)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, Widget?) builder = (p0, p1) {
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
        // typedef ExpansionPanelHeaderBuilder = Widget Function(BuildContext context, bool isExpanded)
        // art_tool/flutter/lib/src/material/expansion_panel.dart
        case 'Widget Function(BuildContext, bool)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, bool) builder = (p0, p1) {
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
        // typedef IndexedWidgetBuilder = Widget Function(BuildContext context, int index)
        // art_tool/flutter/lib/src/widgets/framework.dart
        case 'Widget Function(BuildContext, int)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, int) builder = (p0, p1) {
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
        // typedef AnimatedItemBuilder = Widget Function(BuildContext context, int index, Animation<double> animation)
        // art_tool/flutter/lib/src/widgets/animated_scroll_view.dart
        case 'Widget Function(BuildContext, int, Animation<double>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, int, Animation<double>) builder =
              (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef InspectorSelectButtonBuilder = Widget Function(BuildContext context, void Function() onPressed)
        // art_tool/flutter/lib/src/widgets/widget_inspector.dart
        case 'Widget Function(BuildContext, void Function())':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, void Function()) builder = (p0, p1) {
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
        // typedef AutocompleteOptionsViewBuilder<inout T extends Object> = Widget Function(BuildContext context, void Function(T) onSelected, Iterable<T> options)
        // art_tool/flutter/lib/src/widgets/autocomplete.dart
        case 'Widget Function(BuildContext, void Function(Object), Iterable<Object>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, void Function(Object), Iterable<Object>)
              builder = (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef StatefulWidgetBuilder = Widget Function(BuildContext context, void Function(void Function()) setState)
        // art_tool/flutter/lib/src/widgets/basic.dart
        case 'Widget Function(BuildContext, void Function(void Function()))':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(BuildContext, void Function(void Function()))
              builder = (p0, p1) {
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
        // typedef FormFieldBuilder<in T> = Widget Function(FormFieldState<T> field)
        // art_tool/flutter/lib/src/widgets/form.dart
        case 'Widget Function(FormFieldState<Object>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(FormFieldState<Object>) builder = (p0) {
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
        // typedef ViewBuilder = Widget Function(Iterable<Widget> suggestions)
        // art_tool/flutter/lib/src/material/search_anchor.dart
        case 'Widget Function(Iterable<Widget>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(Iterable<Widget>) builder = (p0) {
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
        // typedef AnimatedSwitcherTransitionBuilder = Widget Function(Widget child, Animation<double> animation)
        // art_tool/flutter/lib/src/widgets/animated_switcher.dart
        case 'Widget Function(Widget, Animation<double>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(Widget, Animation<double>) builder = (p0, p1) {
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
        // typedef AnimatedCrossFadeBuilder = Widget Function(Widget topChild, Key topChildKey, Widget bottomChild, Key bottomChildKey)
        // art_tool/flutter/lib/src/widgets/animated_cross_fade.dart
        case 'Widget Function(Widget, Key, Widget, Key)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(Widget, Key, Widget, Key) builder = (p0, p1, p2, p3) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2,
                  functionPaParameters[3]: p3
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef ReorderItemProxyDecorator = Widget Function(Widget child, int index, Animation<double> animation)
        // art_tool/flutter/lib/src/widgets/reorderable_list.dart
        case 'Widget Function(Widget, int, Animation<double>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(Widget, int, Animation<double>) builder =
              (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef AnimatedSwitcherLayoutBuilder = Widget Function(Widget? currentChild, List<Widget> previousChildren)
        // art_tool/flutter/lib/src/widgets/animated_switcher.dart
        case 'Widget Function(Widget?, List<Widget>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget Function(Widget?, List<Widget>) builder = (p0, p1) {
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
        // typedef TwoDimensionalIndexedWidgetBuilder = Widget? Function(BuildContext , ChildVicinity vicinity)
        // art_tool/flutter/lib/src/widgets/two_dimensional_viewport.dart
        case 'Widget? Function(BuildContext, ChildVicinity)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget? Function(BuildContext, ChildVicinity) builder = (p0, p1) {
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
        // typedef MagnifierBuilder = Widget? Function(BuildContext context, MagnifierController controller, ValueNotifier<MagnifierInfo> magnifierInfo)
        // art_tool/flutter/lib/src/widgets/magnifier.dart
        case 'Widget? Function(BuildContext, MagnifierController, ValueNotifier<MagnifierInfo>)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget? Function(BuildContext, MagnifierController,
              ValueNotifier<MagnifierInfo>) builder = (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef NullableIndexedWidgetBuilder = Widget? Function(BuildContext context, int index)
        // art_tool/flutter/lib/src/widgets/framework.dart
        case 'Widget? Function(BuildContext, int)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget? Function(BuildContext, int) builder = (p0, p1) {
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
        // typedef InputCounterWidgetBuilder = Widget? Function(BuildContext context, {required int currentLength, required int? maxLength, required bool isFocused})
        // art_tool/flutter/lib/src/material/text_field.dart
        case 'Widget? Function(BuildContext, {required int currentLength, required int? maxLength, required bool isFocused})':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget? Function(BuildContext,
                  {required int currentLength,
                  required int? maxLength,
                  required bool isFocused}) builder =
              (p0,
                  {required int currentLength,
                  required bool isFocused,
                  required int? maxLength}) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  'currentLength': currentLength,
                  'isFocused': isFocused,
                  'maxLength': maxLength
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef StepIconBuilder = Widget? Function(int stepIndex, StepState stepState)
        // art_tool/flutter/lib/src/material/stepper.dart
        case 'Widget? Function(int, StepState)':
          List functionPaParameters = FunctionDomain.pa(map);
          Widget? Function(int, StepState) builder = (p0, p1) {
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
        // typedef SelectableDayPredicate = bool Function(DateTime day)
        // art_tool/flutter/lib/src/material/date.dart
        case 'bool Function(DateTime)':
          List functionPaParameters = FunctionDomain.pa(map);
          bool Function(DateTime) builder = (p0) {
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
        // typedef ConditionalElementVisitor = bool Function(Element element)
        // art_tool/flutter/lib/src/widgets/framework.dart
        case 'bool Function(Element)':
          List functionPaParameters = FunctionDomain.pa(map);
          bool Function(Element) builder = (p0) {
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
        // typedef RoutePredicate = bool Function(Route<dynamic> route)
        // art_tool/flutter/lib/src/widgets/navigator.dart
        case 'bool Function(Route<dynamic>)':
          List functionPaParameters = FunctionDomain.pa(map);
          bool Function(Route<dynamic>) builder = (p0) {
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
        // typedef PopPageCallback = bool Function(Route<dynamic> route, dynamic result)
        // art_tool/flutter/lib/src/widgets/navigator.dart
        case 'bool Function(Route<dynamic>, dynamic)':
          List functionPaParameters = FunctionDomain.pa(map);
          bool Function(Route<dynamic>, dynamic) builder = (p0, p1) {
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
        // typedef ScrollNotificationPredicate = bool Function(ScrollNotification notification)
        // art_tool/flutter/lib/src/widgets/scroll_notification.dart
        case 'bool Function(ScrollNotification)':
          List functionPaParameters = FunctionDomain.pa(map);
          bool Function(ScrollNotification) builder = (p0) {
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
        // typedef NotificationListenerCallback<in T extends Notification> = bool Function(T notification)
        // art_tool/flutter/lib/src/widgets/notification_listener.dart
        case 'bool Function(Object)':
          List functionPaParameters = FunctionDomain.pa(map);
          bool Function(Object) builder = (p0) {
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
        // typedef DragTargetWillAccept<in T> = bool Function(T? data)
        // art_tool/flutter/lib/src/widgets/drag_target.dart
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

        case 'bool Function(T?, T)':
          List functionPaParameters = FunctionDomain.pa(map);
          bool Function(Tab?, Tab) builder = (p0, p1) {
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
        // typedef AllowedButtonsFilter = bool Function(int buttons)
        // package:flutter/src/gestures/recognizer.dart
        case 'bool Function(int)':
          List functionPaParameters = FunctionDomain.pa(map);
          bool Function(int) builder = (p0) {
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

        case 'double Function(RenderBox)':
          List functionPaParameters = FunctionDomain.pa(map);
          double Function(RenderBox) builder = (p0) {
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
        // typedef ScrollIncrementCalculator = double Function(ScrollIncrementDetails details)
        // art_tool/flutter/lib/src/widgets/scrollable_helpers.dart
        case 'double Function(ScrollIncrementDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          double Function(ScrollIncrementDetails) builder = (p0) {
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
        // typedef GestureForceInterpolation = double Function(double pressureMin, double pressureMax, double pressure)
        // art_tool/flutter/lib/src/gestures/force_press.dart
        case 'double Function(double, double, double)':
          List functionPaParameters = FunctionDomain.pa(map);
          double Function(double, double, double) builder = (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef ComputePropertyValueCallback<out T> = T? Function()
        // art_tool/flutter/lib/src/foundation/diagnostics.dart
        case 'double? Function()':
          double? Function() builder = () {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              domain,
            );
          };
          return builder;
        // typedef MenuItemSerializableIdGenerator = int Function(PlatformMenuItem item)
        // art_tool/flutter/lib/src/widgets/platform_menu_bar.dart
        case 'int Function(PlatformMenuItem)':
          List functionPaParameters = FunctionDomain.pa(map);
          int Function(PlatformMenuItem) builder = (p0) {
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
        // typedef ChildIndexGetter = int? Function(Key key)
        // art_tool/flutter/lib/src/widgets/scroll_delegate.dart
        case 'int? Function(Key)':
          List functionPaParameters = FunctionDomain.pa(map);
          int? Function(Key) builder = (p0) {
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
        // typedef SemanticIndexCallback = int? Function(Widget widget, int localIndex)
        // art_tool/flutter/lib/src/widgets/scroll_delegate.dart
        case 'int? Function(Widget, int)':
          List functionPaParameters = FunctionDomain.pa(map);
          int? Function(Widget, int) builder = (p0, p1) {
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
        // typedef VoidCallback = void Function()
        // dart:ui/platform_dispatcher.dart
        case 'void Function()':
          void Function() builder = () {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              domain,
            );
          };
          return builder;
        // typedef ActionListenerCallback = void Function(Action<Intent> action)
        // art_tool/flutter/lib/src/widgets/actions.dart
        case 'void Function(Action<Intent>)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(Action<Intent>) builder = (p0) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(AppLifecycleState)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(AppLifecycleState) builder = (p0) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(DatePickerEntryMode)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(DatePickerEntryMode) builder = (p0) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(DateTime)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(DateTime) builder = (p0) {
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
        // typedef DismissDirectionCallback = void Function(DismissDirection direction)
        // art_tool/flutter/lib/src/widgets/dismissible.dart
        case 'void Function(DismissDirection)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(DismissDirection) builder = (p0) {
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
        // typedef DismissUpdateCallback = void Function(DismissUpdateDetails details)
        // art_tool/flutter/lib/src/widgets/dismissible.dart
        case 'void Function(DismissUpdateDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(DismissUpdateDetails) builder = (p0) {
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
        // typedef GestureDragDownCallback = void Function(DragDownDetails details)
        // package:flutter/src/gestures/drag_details.dart
        case 'void Function(DragDownDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(DragDownDetails) builder = (p0) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(DragEndDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(DragEndDetails) builder = (p0) {
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
        // typedef BottomSheetDragEndHandler = void Function(DragEndDetails details, {required bool isClosing})
        // art_tool/flutter/lib/src/material/bottom_sheet.dart
        case 'void Function(DragEndDetails, {required bool isClosing})':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(DragEndDetails, {required bool isClosing}) builder =
              (p0, {required bool isClosing}) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {functionPaParameters[0]: p0, 'isClosing': isClosing},
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(DragStartDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(DragStartDetails) builder = (p0) {
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
        // typedef DragTargetMove<in T> = void Function(DragTargetDetails<T> details)
        // art_tool/flutter/lib/src/widgets/drag_target.dart
        case 'void Function(DragTargetDetails<Object>)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(DragTargetDetails<Object>) builder = (p0) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(DragUpdateDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(DragUpdateDetails) builder = (p0) {
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
        // typedef DragEndCallback = void Function(DraggableDetails details)
        // art_tool/flutter/lib/src/widgets/drag_target.dart
        case 'void Function(DraggableDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(DraggableDetails) builder = (p0) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(Duration)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(Duration) builder = (p0) {
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
        // typedef ElementVisitor = void Function(Element element)
        // art_tool/flutter/lib/src/widgets/framework.dart
        case 'void Function(Element)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(Element) builder = (p0) {
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
        // typedef TraversalRequestFocusCallback = void Function(FocusNode node, {ScrollPositionAlignmentPolicy? alignmentPolicy, double? alignment, Duration? duration, Curve? curve})
        // art_tool/flutter/lib/src/widgets/focus_traversal.dart
        case 'void Function(FocusNode, {double? alignment, ScrollPositionAlignmentPolicy? alignmentPolicy, Curve? curve, Duration? duration})':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(FocusNode,
                  {double? alignment,
                  ScrollPositionAlignmentPolicy? alignmentPolicy,
                  Curve? curve,
                  Duration? duration}) builder =
              (p0,
                  {double? alignment,
                  ScrollPositionAlignmentPolicy? alignmentPolicy,
                  Curve? curve,
                  Duration? duration}) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  'alignment': alignment,
                  'alignmentPolicy': alignmentPolicy,
                  'curve': curve,
                  'duration': duration
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef GestureForcePressEndCallback = void Function(ForcePressDetails details)
        // package:flutter/src/gestures/force_press.dart
        case 'void Function(ForcePressDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(ForcePressDetails) builder = (p0) {
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
        // typedef ImageChunkListener = void Function(ImageChunkEvent event)
        // art_tool/flutter/lib/src/painting/image_stream.dart
        case 'void Function(ImageChunkEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(ImageChunkEvent) builder = (p0) {
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
        // typedef ImageListener = void Function(ImageInfo image, bool synchronousCall)
        // art_tool/flutter/lib/src/painting/image_stream.dart
        case 'void Function(ImageInfo, bool)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(ImageInfo, bool) builder = (p0, p1) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(KeyEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(KeyEvent) builder = (p0) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(KeyboardInsertedContent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(KeyboardInsertedContent) builder = (p0) {
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
        // typedef GestureLongPressDownCallback = void Function(LongPressDownDetails details)
        // package:flutter/src/gestures/long_press.dart
        case 'void Function(LongPressDownDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(LongPressDownDetails) builder = (p0) {
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
        // typedef GestureLongPressEndCallback = void Function(LongPressEndDetails details)
        // package:flutter/src/gestures/long_press.dart
        case 'void Function(LongPressEndDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(LongPressEndDetails) builder = (p0) {
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
        // typedef GestureLongPressMoveUpdateCallback = void Function(LongPressMoveUpdateDetails details)
        // package:flutter/src/gestures/long_press.dart
        case 'void Function(LongPressMoveUpdateDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(LongPressMoveUpdateDetails) builder = (p0) {
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
        // typedef GestureLongPressStartCallback = void Function(LongPressStartDetails details)
        // package:flutter/src/gestures/long_press.dart
        case 'void Function(LongPressStartDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(LongPressStartDetails) builder = (p0) {
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
        // typedef ImageErrorListener = void Function(Object exception, StackTrace? stackTrace)
        // package:flutter/src/painting/image_stream.dart
        case 'void Function(Object, StackTrace?)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(Object, StackTrace?) builder = (p0, p1) {
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
        // typedef DebugPaintCallback = void Function(PaintingContext context, Offset offset, RenderView renderView)
        // art_tool/flutter/lib/src/rendering/view.dart
        case 'void Function(PaintingContext, Offset, RenderView)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(PaintingContext, Offset, RenderView) builder =
              (p0, p1, p2) {
            return pa0Value(
              FunctionDomain.getBody(map),
              methodMap,
              context,
              FunctionDomain(
                {
                  functionPaParameters[0]: p0,
                  functionPaParameters[1]: p1,
                  functionPaParameters[2]: p2
                },
                parent: domain,
              ),
            );
          };
          return builder;
        // typedef PointerCancelEventListener = void Function(PointerCancelEvent event)
        // package:flutter/src/rendering/proxy_box.dart
        case 'void Function(PointerCancelEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(PointerCancelEvent) builder = (p0) {
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
        // typedef TapRegionCallback = void Function(PointerDownEvent event)
        // art_tool/flutter/lib/src/widgets/tap_region.dart
        case 'void Function(PointerDownEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(PointerDownEvent) builder = (p0) {
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
        // typedef PointerEnterEventListener = void Function(PointerEnterEvent event)
        // package:flutter/src/services/mouse_tracking.dart
        case 'void Function(PointerEnterEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(PointerEnterEvent) builder = (p0) {
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
        // typedef PointerExitEventListener = void Function(PointerExitEvent event)
        // package:flutter/src/services/mouse_tracking.dart
        case 'void Function(PointerExitEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(PointerExitEvent) builder = (p0) {
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
        // typedef PointerHoverEventListener = void Function(PointerHoverEvent event)
        // package:flutter/src/services/mouse_tracking.dart
        case 'void Function(PointerHoverEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(PointerHoverEvent) builder = (p0) {
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
        // typedef PointerMoveEventListener = void Function(PointerMoveEvent event)
        // package:flutter/src/rendering/proxy_box.dart
        case 'void Function(PointerMoveEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(PointerMoveEvent) builder = (p0) {
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
        // typedef PointerPanZoomEndEventListener = void Function(PointerPanZoomEndEvent event)
        // package:flutter/src/rendering/proxy_box.dart
        case 'void Function(PointerPanZoomEndEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(PointerPanZoomEndEvent) builder = (p0) {
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
        // typedef PointerPanZoomStartEventListener = void Function(PointerPanZoomStartEvent event)
        // package:flutter/src/rendering/proxy_box.dart
        case 'void Function(PointerPanZoomStartEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(PointerPanZoomStartEvent) builder = (p0) {
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
        // typedef PointerPanZoomUpdateEventListener = void Function(PointerPanZoomUpdateEvent event)
        // package:flutter/src/rendering/proxy_box.dart
        case 'void Function(PointerPanZoomUpdateEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(PointerPanZoomUpdateEvent) builder = (p0) {
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
        // typedef PointerSignalEventListener = void Function(PointerSignalEvent event)
        // package:flutter/src/rendering/proxy_box.dart
        case 'void Function(PointerSignalEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(PointerSignalEvent) builder = (p0) {
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
        // typedef PointerUpEventListener = void Function(PointerUpEvent event)
        // package:flutter/src/rendering/proxy_box.dart
        case 'void Function(PointerUpEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(PointerUpEvent) builder = (p0) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(RangeValues)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(RangeValues) builder = (p0) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(RawKeyEvent)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(RawKeyEvent) builder = (p0) {
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
        // typedef GestureScaleEndCallback = void Function(ScaleEndDetails details)
        // package:flutter/src/gestures/scale.dart
        case 'void Function(ScaleEndDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(ScaleEndDetails) builder = (p0) {
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
        // typedef GestureScaleStartCallback = void Function(ScaleStartDetails details)
        // package:flutter/src/gestures/scale.dart
        case 'void Function(ScaleStartDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(ScaleStartDetails) builder = (p0) {
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
        // typedef GestureScaleUpdateCallback = void Function(ScaleUpdateDetails details)
        // package:flutter/src/gestures/scale.dart
        case 'void Function(ScaleUpdateDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(ScaleUpdateDetails) builder = (p0) {
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
        // typedef ScrollControllerCallback = void Function(ScrollPosition position)
        // art_tool/flutter/lib/src/widgets/scroll_controller.dart
        case 'void Function(ScrollPosition)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(ScrollPosition) builder = (p0) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(SelectedContent?)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(SelectedContent?) builder = (p0) {
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
        // typedef SemanticsUpdateCallback = void Function(SemanticsUpdate update)
        // package:flutter/src/semantics/semantics.dart
        case 'void Function(SemanticsUpdate)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(SemanticsUpdate) builder = (p0) {
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

        case 'void Function(Set<Object>)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(Set<Object>) builder = (p0) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(String)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(String) builder = (p0) {
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
        // typedef AppPrivateCommandCallback = void Function(String , Map<String, dynamic> )
        // art_tool/flutter/lib/src/widgets/editable_text.dart
        case 'void Function(String, Map<String, dynamic>)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(String, Map<String, dynamic>) builder = (p0, p1) {
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
        // typedef FormFieldSetter<in T> = void Function(T? newValue)
        // package:flutter/src/widgets/form.dart
        case 'void Function(String?)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(String?) builder = (p0) {
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
        // typedef AutocompleteOnSelected<in T extends Object> = void Function(T option)
        // art_tool/flutter/lib/src/widgets/autocomplete.dart
        case 'void Function(Object)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(Object) builder = (p0) {
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
        // typedef DragTargetLeave<in T> = void Function(T? data)
        // art_tool/flutter/lib/src/widgets/drag_target.dart
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
        // typedef GestureTapDownCallback = void Function(TapDownDetails details)
        // package:flutter/src/gestures/tap.dart
        case 'void Function(TapDownDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(TapDownDetails) builder = (p0) {
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
        // typedef GestureTapUpCallback = void Function(TapUpDetails details)
        // package:flutter/src/gestures/tap.dart
        case 'void Function(TapUpDetails)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(TapUpDetails) builder = (p0) {
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
        // typedef SetSelectionHandler = void Function(TextSelection selection)
        // package:flutter/src/semantics/semantics.dart
        case 'void Function(TextSelection)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(TextSelection) builder = (p0) {
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
        // typedef SelectionChangedCallback = void Function(TextSelection selection, SelectionChangedCause? cause)
        // art_tool/flutter/lib/src/widgets/editable_text.dart
        case 'void Function(TextSelection, SelectionChangedCause?)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(TextSelection, SelectionChangedCause?) builder =
              (p0, p1) {
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
        // typedef EntryModeChangeCallback = void Function(TimePickerEntryMode )
        // art_tool/flutter/lib/src/material/time_picker.dart
        case 'void Function(TimePickerEntryMode)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(TimePickerEntryMode) builder = (p0) {
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
        // typedef DraggableCanceledCallback = void Function(Velocity velocity, Offset offset)
        // art_tool/flutter/lib/src/widgets/drag_target.dart
        case 'void Function(Velocity, Offset)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(Velocity, Offset) builder = (p0, p1) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(bool)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(bool) builder = (p0) {
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
        // typedef ValueSetter<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(bool?)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(bool?) builder = (p0) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(double)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(double) builder = (p0) {
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
        // typedef PlatformViewCreatedCallback = void Function(int id)
        // package:flutter/src/services/platform_views.dart
        case 'void Function(int)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(int) builder = (p0) {
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
        // typedef ExpansionPanelCallback = void Function(int panelIndex, bool isExpanded)
        // art_tool/flutter/lib/src/material/expansion_panel.dart
        case 'void Function(int, bool)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(int, bool) builder = (p0, p1) {
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
        // typedef ReorderCallback = void Function(int oldIndex, int newIndex)
        // art_tool/flutter/lib/src/widgets/reorderable_list.dart
        case 'void Function(int, int)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(int, int) builder = (p0, p1) {
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
        // typedef ValueChanged<in T> = void Function(T value)
        // package:flutter/src/foundation/basic_types.dart
        case 'void Function(int?)':
          List functionPaParameters = FunctionDomain.pa(map);
          void Function(int?) builder = (p0) {
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

        default:
      }
    }
    return null;
  }
}
