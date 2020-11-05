import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/bean/user/hot_word_bean.dart';
import 'package:flutter_wan/view/component/article_list/state.dart';

class SearchState implements Cloneable<SearchState> {
  //文章数据源
  ArticleListState subState;

  //搜索热词
  List<Data> hotList;

  //输入框控制器
  TextEditingController controller;

  @override
  SearchState clone() {
    return SearchState()
      ..subState = subState
      ..controller = controller
      ..hotList = hotList;
  }
}

SearchState initState(Map<String, dynamic> args) {
  return SearchState()
    ..hotList = []
    ..controller = TextEditingController()
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
