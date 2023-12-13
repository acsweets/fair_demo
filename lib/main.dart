import 'package:demo/plugin.dart';
import 'package:demo/src/fair_app_generated.dart';
import 'package:demo/widget/custom_fair_bundle.dart';
import 'package:demo/widget/custom_fair_jsdecoder.dart';
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
  FairJSDecoder.resolve = (String? jsPath) async {
    return CustomFairJSDecoder().decode(jsPath);
  };

  FairApp.runApplication(

      FairApp(
        child: MyApp(),
          bundleProvider: CustomFairBundleLoader(),
          generated: FairAppGeneratedModule(),
          // generated: g.AppGeneratedModule(),
          // delegate: <String, FairDelegateBuilder>{
            // 'TestPage': (context, data) => TestPageFairDelegate(),
            // 'HotUpdateIssue': (context, data) => HotUpdateIssueFairDelegate(),
            // 'FoundError': (context, data) =>ErrorFoundDelegate(),
          // },
          dynamicWidgetBuilder: [
          (proxyMirror, page, bound, {bundle}) => CustomDynamicWidgetBuilder(proxyMirror, page, bound, bundle: bundle),]
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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.


    return FairWidget(
      path: 'assets/bundle/lib_modules_mutualism_task_create_task_widget_deom.fair.json',
      // data: {
      /// 此处的 key 必须是 fairProps，不可以自定义
      /// value 是一个 Map 类型的数据，最好是进行 jsonEncode() 操作
      // 'fairProps': jsonEncode({'title': '你好'}),
      // },
    );
  }
}
