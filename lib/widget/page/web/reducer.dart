import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<WebViewState> buildReducer() {
  return asReducer(
    <Object, Reducer<WebViewState>>{
      WebViewAction.onRefresh: _onRefresh,
    },
  );
}

WebViewState _onRefresh(WebViewState state, Action action) {
  return state.clone();
}
