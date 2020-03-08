import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<WebViewState> buildReducer() {
  return asReducer(
    <Object, Reducer<WebViewState>>{
      WebViewAction.action: _onAction,
      WebViewAction.onProgress: _onProgress,
    },
  );
}

WebViewState _onAction(WebViewState state, Action action) {
  final WebViewState newState = state.clone();
  return newState;
}


WebViewState _onProgress(WebViewState state, Action action) {
  WebViewState newState = state.clone();
  newState.progress = action.payload;
  return newState;
}