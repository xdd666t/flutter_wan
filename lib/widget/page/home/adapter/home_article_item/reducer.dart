import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

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
