import 'package:fair/fair.dart';

//这在里可以写一些公共的要用的值和方法
class FairDelegateBase extends FairDelegate {
  @override
  Map<String, PropertyValue> bindValue() {
    return <String, PropertyValue>{
      ...super.bindValue(),
      'context': () => context,
    };
  }

  @override
  Map<String, Function> bindFunction() {
    return {
      ...super.bindFunction(),
      'showPrint': showPrint,
    };
  }

  void showPrint() {
    print("点击事件打印");
  }
}
