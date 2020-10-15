import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeArticleItemAction {
  //打开相应的文章内容
  openArticleContent,
}

class HomeArticleItemActionCreator {
  //打开新闻内容
  static Action openArticleContent() {
    return Action(HomeArticleItemAction.openArticleContent);
  }
}
