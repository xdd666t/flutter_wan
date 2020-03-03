import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';

class HomeArticleItemState implements Cloneable<HomeArticleItemState> {
  HomeArticleDataData itemDtail;

  HomeArticleItemState({this.itemDtail});

  @override
  HomeArticleItemState clone() {
    return HomeArticleItemState()
        ..itemDtail = itemDtail;
  }
}

HomeArticleItemState initState(Map<String, dynamic> args) {
  return HomeArticleItemState();
}
