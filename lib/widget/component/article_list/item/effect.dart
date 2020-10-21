import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';
import 'package:flutter_wan/bean/common/article_detail_bean.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';

import 'action.dart';
import 'state.dart';

Effect<ArticleItemState> buildEffect() {
  return combineEffects(<Object, Effect<ArticleItemState>>{
    ArticleItemAction.openArticleContent: _openArticleContent,
  });
}

void _openArticleContent(Action action, Context<ArticleItemState> ctx) {
  //传递过来的数据
  Datas data = ctx.state.itemDetail;
  ArticleDetailBean articleDetailBean = ArticleDetailBean();
  articleDetailBean.url = data.link;
  articleDetailBean.title = data.title;

  Navigator.pushNamed(
    ctx.context,
    RouteConfig.webViewPage,
    arguments: {"articleDetail": articleDetailBean},
  );
}
