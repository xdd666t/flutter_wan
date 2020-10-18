import 'package:fish_redux/fish_redux.dart';

enum WebViewAction {
  //是否呈现加载动画
  isLoading,
  //刷新
  onRefresh,
}

class WebViewActionCreator {
  static Action isLoading(bool isLoading) {
    return Action(WebViewAction.isLoading, payload: isLoading);
  }

  static Action onRefresh() {
    return Action(WebViewAction.onRefresh);
  }
}
