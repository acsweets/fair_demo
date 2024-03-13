import 'dart:convert';

import 'package:fair/fair.dart';
import 'package:flutter/cupertino.dart';
import 'package:fair_version/src/widgets/version.dart' as fair_version;
import 'package:demo/test/lib/generated_m/flutter.bindings.dart' as local_version;
import 'package:fair/src/internal/flexbuffer/fair_js_decoder.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'lib/custom/custom_dynamic.dart';
import '../plugin.dart';
import '../src/fair_app_generated.dart';
import '../widget/custom_fair_bundle.dart';
import '../widget/custom_fair_jsdecoder.dart';
import 'lib/delegate/delegate_base.dart';
import 'lib/utils/fair_binding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  fair_version.fairVersion = '3.2.0';
  fair_version.flutterVersion = local_version.flutterVersion;
  fair_version.dartVersion = local_version.dartVersion;
  fair_version.widgetCount = local_version.widgetCount;
  fair_version.apiCount = local_version.apiCount;

  FairJSDecoder.resolve = (String? jsPath) async {
    return CustomFairJSDecoder().decode(jsPath);
  };
  FairBindings.init();
  FairApp.runApplication(
      FairApp(
        generated: FairAppGeneratedModule(),
        delegate: FairDelegateBase.delegates,
        dynamicWidgetBuilder: (proxyMirror, page, bound, {bundle}) =>
            CustomDynamicWidgetBuilder(proxyMirror, page, bound, bundle: bundle),
        bundleProvider: CustomFairBundleLoader(),
        child: const MyApp(),
      ),
      plugins: <String, IFairPlugin>{'FairCommonPlugin': FairCommonPlugin()});
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
          title: 'FairGallery',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          navigatorKey: MyApp.navigatorKey,
          home: Scaffold(
            appBar: AppBar(title: Text("标题"),
            ),body:Container(
            child: FairWidget(
              path: "assets/bundle/lib_test_lib_page_from_page.fair.json",
            ),
          )
          )),
    );
  }
}
