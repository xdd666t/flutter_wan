import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart'hide Action;
import 'package:flutter_wan/bean/common/article_detail_bean.dart';
import 'package:flutter_wan/bean/navi/navi_info_bean.dart';
import 'action.dart';
import 'state.dart';

Effect<NaviDetailItemState> buildEffect() {
  return combineEffects(<Object, Effect<NaviDetailItemState>>{
    NaviDetailItemAction.openArticle: _openArticle,
  });
}

void _openArticle(Action action, Context<NaviDetailItemState> ctx) {
  NaviInfoDataArticle articleInfo = action.payload;
  ArticleDetailBean articleDetailBean = ArticleDetailBean();
  articleDetailBean.title = articleInfo.title;
  articleDetailBean.url = articleInfo.link;

  Navigator.of(ctx.context).pushNamed("webview", arguments: {"articleDetail": articleDetailBean});
}
