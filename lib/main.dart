import 'package:demo/plugin.dart';
import 'package:demo/src/fair_app_generated.dart';
import 'package:demo/widget/custom_fair_bundle.dart';
import 'package:demo/widget/custom_fair_jsdecoder.dart';
import 'package:demo/widget/textpage_delegate.dart';
import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
import 'package:fair/src/internal/flexbuffer/fair_js_decoder.dart';
import 'custom_dynamic.dart';

@FairBinding(packages: [
  'package:demo/widget/radius_inkwell_widget.dart',
])
void main() {

  // runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();

  ///替换掉 Fair 默认的 FairJSDecoder。
  // FairJSDecoder.resolve = (String? jsPath) async {
  //   return CustomFairJSDecoder().decode(jsPath);
  // };

  FairApp.runApplication(
      FairApp(
        child: MyApp(),
        bundleProvider: CustomFairBundleLoader(),
        generated: FairAppGeneratedModule(),
        // generated: g.AppGeneratedModule(),
        delegate: <String, FairDelegateBuilder>{
        'TestPage': (context, data) => TestPageFairDelegate(),
        // 'HotUpdateIssue': (context, data) => HotUpdateIssueFairDelegate(),
        // 'FoundError': (context, data) =>ErrorFoundDelegate(),
        },
        dynamicWidgetBuilder: (proxyMirror, page, bound, {bundle}) =>
            CustomDynamicWidgetBuilder(proxyMirror, page, bound, bundle: bundle),
      ),
      plugins: <String, IFairPlugin>{'FairCommonPlugin': FairCommonPlugin()});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return FairWidget(
      path: 'assets/bundle/lib_deom.fair.json',
      name: 'TestPage',
      // data: {
      /// 此处的 key 必须是 fairProps，不可以自定义
      /// value 是一个 Map 类型的数据，最好是进行 jsonEncode() 操作
      // 'fairProps': jsonEncode({'title': '你好'}),
      // },
    );
  }
}
