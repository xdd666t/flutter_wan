import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';

enum TreeTabItemAction {
  //打开选择的文章
  openArticleContent,
}

class TreeTabItemActionCreator {
  static Action openArticleContent(HomeArticleDataData data) {
    return Action(TreeTabItemAction.openArticleContent, payload: data);
  }
}
