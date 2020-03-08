import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<WebViewState> buildEffect() {
  return combineEffects(<Object, Effect<WebViewState>>{
    WebViewAction.action: _onAction,
  });
}

void _onAction(Action action, Context<WebViewState> ctx) {
}
