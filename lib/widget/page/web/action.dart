import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum WebViewAction { action,
  isLoading
}

class WebViewActionCreator {
  static Action onAction() {
    return const Action(WebViewAction.action);
  }


  static Action isLoading(bool isLoading) {
    return Action(WebViewAction.isLoading, payload: isLoading);
  }
}
