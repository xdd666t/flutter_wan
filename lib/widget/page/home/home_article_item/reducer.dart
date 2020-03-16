import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/home/home_article_item/state.dart';

import 'action.dart';

Reducer<HomeArticleItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeArticleItemState>>{
      HomeArticleItemAction.action: _onAction,
    },
  );
}

HomeArticleItemState _onAction(HomeArticleItemState state, Action action) {
  final HomeArticleItemState newState = state.clone();
  return newState;
}
