import 'package:fish_redux/fish_redux.dart';

enum ArticleItemAction {
  //打开相应的文章内容
  openArticleContent,
}

class ArticleItemActionCreator {
  //打开新闻内容
  static Action openArticleContent() {
    return Action(ArticleItemAction.openArticleContent);
  }
}
