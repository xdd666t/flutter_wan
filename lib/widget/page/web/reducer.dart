import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<WebViewState> buildReducer() {
  return asReducer(
    <Object, Reducer<WebViewState>>{
      WebViewAction.action: _onAction,
      WebViewAction.isLoading: _isLoading,
    },
  );
}

WebViewState _onAction(WebViewState state, Action action) {
  final WebViewState newState = state.clone();
  return newState;
}


WebViewState _isLoading(WebViewState state, Action action) {
  WebViewState newState = state.clone();
  newState.isLoading = action.payload;
  return newState;
}