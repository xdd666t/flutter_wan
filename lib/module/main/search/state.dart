import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/view/component/article_list/state.dart';

class SearchState implements Cloneable<SearchState> {
  //文章数据源
  ArticleListState subState;

  @override
  SearchState clone() {
    return SearchState()..subState = subState;
  }
}

SearchState initState(Map<String, dynamic> args) {
  return SearchState()
    ..subState = ArticleListState(
      type: 2,
      firstRefresh: false,
    );
}

///文章列表连接器
class SearchArticleConnector extends ConnOp<SearchState, ArticleListState>
    with ReselectMixin<SearchState, ArticleListState> {
  @override
  ArticleListState computed(SearchState state) {
    return state.subState.clone();
  }

  @override
  void set(SearchState state, ArticleListState subState) {
    state.subState = subState;
  }
}
