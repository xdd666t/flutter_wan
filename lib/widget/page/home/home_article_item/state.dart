import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';

class HomeArticleItemState implements Cloneable<HomeArticleItemState> {
  HomeArticleDataData itemDetail;

  HomeArticleItemState({this.itemDetail});

  @override
  HomeArticleItemState clone() {
    return HomeArticleItemState()
        ..itemDetail = itemDetail;
  }
}

HomeArticleItemState initState(Map<String, dynamic> args) {
  return HomeArticleItemState();
}
