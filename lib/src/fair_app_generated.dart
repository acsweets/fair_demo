import 'package:fair/fair.dart';

import 'package:demo/test/lib/generated_m/flutter.bindings.dart';
import 'generated_module/app.bindings.dart';

class FairAppGeneratedModule extends GeneratedModule {
  @override
  Map<String, dynamic> components() {
    return <String, dynamic>{
       ...appComponents,
      // ...packagesComponents,
      ...flutterComponents,
      // add your cases here.
    };
  }

  /// true means it's a widget.
  @override
  Map<String, bool> mapping() {
    return <String, bool>{
      // ...appMapping,
      // ...packagesMapping,
      ...flutterMapping,
      // remember add your cases here too.
    };
  }
}

