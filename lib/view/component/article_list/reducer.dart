import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ArticleListState> buildReducer() {
  return asReducer(
    <Object, Reducer<ArticleListState>>{
      ArticleListAction.onRefresh: _onRefresh,
    },
  );
}

ArticleListState _onRefresh(ArticleListState state, Action action) {
  return state.clone();
}
