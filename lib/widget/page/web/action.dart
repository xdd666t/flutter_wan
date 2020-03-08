import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum WebViewAction { action, onProgress}

class WebViewActionCreator {
  static Action onAction() {
    return const Action(WebViewAction.action);
  }

  static Action onProgress(double progress) {
    return Action(WebViewAction.onProgress, payload: progress);
  }
}
