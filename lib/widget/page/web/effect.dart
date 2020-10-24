import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<WebViewState> buildEffect() {
  return combineEffects(<Object, Effect<WebViewState>>{
    //是否显示加载动画
    WebViewAction.isLoading: _isLoading,
    //选中和取消收藏操作
    WebViewAction.favorite: _favorite,
  });
}

void _favorite(Action action, Context<WebViewState> ctx) async {

}

void _isLoading(Action action, Context<WebViewState> ctx) async {
  ctx.state.isLoading = action.payload;
  ctx.dispatch(WebViewActionCreator.onRefresh());
}
