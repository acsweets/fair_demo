import 'package:demo/toast_util.dart';
import 'package:fair/fair.dart';

/// 跟 js 交互的方法类
class FairCommonPlugin extends IFairPlugin with  ToastPlugin {
  factory FairCommonPlugin() => _fairCommonPlugin;

  FairCommonPlugin._();

  static final FairCommonPlugin _fairCommonPlugin = FairCommonPlugin._();

  @override
  Map<String, Function> getRegisterMethods() {
    return <String, Function>{
      'showMessageToast': showMessageToast,
    };
  }
}

mixin ToastPlugin implements FairCommonPluginMixin {
  Future<dynamic> showMessageToast(dynamic map) => request(
    map,
        (dynamic requestMap) async {
      final msg = requestMap['msg'];
      showToast(text: msg);
      return null;
    },
  );
}
