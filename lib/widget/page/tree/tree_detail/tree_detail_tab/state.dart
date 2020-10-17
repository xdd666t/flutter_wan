import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/component/article_list/state.dart';

class TreeDetailTabState implements Cloneable<TreeDetailTabState> {
  //文章id
  int id;

  //文章数据源
  ArticleListState subState;

  @override
  TreeDetailTabState clone() {
    return TreeDetailTabState()..subState = subState;
  }
}

TreeDetailTabState initState(Map<String, dynamic> args) {
  var id = args["id"]; //获取TabBar穿过来的id
  return TreeDetailTabState()
    ..id = id
    ..subState = ArticleListState(
      type: 1,
      articleId: id,
    );
}

///文章列表连接器
class ArticleConnector extends ConnOp<TreeDetailTabState, ArticleListState>
    with ReselectMixin<TreeDetailTabState, ArticleListState> {
  @override
  ArticleListState computed(TreeDetailTabState state) {
    return state.subState.clone();
  }

  @override
  void set(TreeDetailTabState state, ArticleListState subState) {
    state.subState = subState;
  }
}
