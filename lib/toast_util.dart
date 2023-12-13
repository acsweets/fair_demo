import 'package:bot_toast/bot_toast.dart';

void showToast({required String text, Duration duration = const Duration(seconds: 2)}) {
  BotToast.showText(text: text, duration: duration);
}
