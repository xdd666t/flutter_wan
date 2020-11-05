import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';
import 'package:flutter_wan/bean/common/article_detail_bean.dart';

import '../action.dart';
import 'action.dart';
import 'state.dart';

Effect<ArticleItemState> buildEffect() {
  return combineEffects(<Object, Effect<ArticleItemState>>{
    ArticleItemAction.openArticleContent: _openArticleContent,
  });
}

void _openArticleContent(Action action, Context<ArticleItemState> ctx) async {
  //传递过来的数据
  var data = ctx.state.itemDetail;
  ArticleDetailBean articleDetailBean = ArticleDetailBean(
    url: data.link,
    title: data.title,
    id: data.id,
    isCollect: data.collect,
  );

  await Navigator.pushNamed(
    ctx.context,
    RouteConfig.webViewPage,
    arguments: {
      "articleDetail": articleDetailBean,
    },
  );
  //广播通知刷新数据
  ctx.broadcast(ArticleListActionCreator.onBoastRefresh());
}
