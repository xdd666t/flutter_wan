import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart'hide Action;
import 'package:flutter_wan/bean/common/article_detail_bean.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';
import 'action.dart';
import 'state.dart';

Effect<TreeTabItemState> buildEffect() {
  return combineEffects(<Object, Effect<TreeTabItemState>>{
    TreeTabItemAction.action: _onAction,
    TreeTabItemAction.openArticleContent: _openArticleContent,
  });
}

void _onAction(Action action, Context<TreeTabItemState> ctx) {
}

void _openArticleContent(Action action, Context<TreeTabItemState> ctx) {
  //传递过来的数据
  HomeArticleDataData homeArticleDataData = action.payload;
  ArticleDetailBean articleDetailBean = ArticleDetailBean();
  articleDetailBean.url = homeArticleDataData.link;
  articleDetailBean.title = homeArticleDataData.title;

  Navigator.of(ctx.context).pushNamed("webview", arguments: {"articleDetail": articleDetailBean});
}
