import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';

//TODO replace with your own action
enum TreeTabItemAction { action,
  openArticleContent
}

class TreeTabItemActionCreator {
  static Action onAction() {
    return const Action(TreeTabItemAction.action);
  }

  static Action openArticleContent(HomeArticleDataData data) {
    return Action(TreeTabItemAction.openArticleContent, payload: data);
  }
}
