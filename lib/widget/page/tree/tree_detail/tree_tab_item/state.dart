import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';

class TreeTabItemState implements Cloneable<TreeTabItemState> {
  HomeArticleDataData itemDetail;

  TreeTabItemState({this.itemDetail});

  @override
  TreeTabItemState clone() {
    return TreeTabItemState()
        ..itemDetail = itemDetail;
  }
}

TreeTabItemState initState(Map<String, dynamic> args) {
  return TreeTabItemState()
      ..itemDetail = HomeArticleDataData();
}
