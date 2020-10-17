import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';

class ArticleItemState implements Cloneable<ArticleItemState> {
  HomeArticleDataData itemDetail;

  ArticleItemState({this.itemDetail});

  @override
  ArticleItemState clone() {
    return ArticleItemState()..itemDetail = itemDetail;
  }
}
