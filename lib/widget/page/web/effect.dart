import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<WebViewState> buildEffect() {
  return combineEffects(<Object, Effect<WebViewState>>{
    //是否显示加载动画
    WebViewAction.isLoading: _isLoading,
  });
}

void _isLoading(Action action, Context<WebViewState> ctx) async {
  ctx.state.isLoading = action.payload;
  ctx.dispatch(WebViewActionCreator.onRefresh());
}
