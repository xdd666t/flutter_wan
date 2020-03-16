import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';

class TreeTabItemState implements Cloneable<TreeTabItemState> {
  HomeArticleDataData itemDtail;

  TreeTabItemState({this.itemDtail});

  @override
  TreeTabItemState clone() {
    return TreeTabItemState()
        ..itemDtail = itemDtail;
  }
}

TreeTabItemState initState(Map<String, dynamic> args) {
  return TreeTabItemState()
      ..itemDtail = HomeArticleDataData();
}
