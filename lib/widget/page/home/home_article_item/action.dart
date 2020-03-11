import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';

import 'state.dart';

//TODO replace with your own action
enum HomeArticleItemAction { action,
  openArticleContent, //打开相应的文章内容
}

class HomeArticleItemActionCreator {
  static Action onAction() {
    return const Action(HomeArticleItemAction.action);
  }

  //打开新闻内容
  static Action openArticleContent(HomeArticleItemState state) {
    return Action(HomeArticleItemAction.openArticleContent, payload: state.itemDtail);
  }


}
