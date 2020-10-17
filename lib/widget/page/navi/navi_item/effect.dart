import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';
import 'package:flutter_wan/bean/common/article_detail_bean.dart';
import 'package:flutter_wan/bean/navi/navi_info_bean.dart';

import 'action.dart';
import 'state.dart';

Effect<NaviItemState> buildEffect() {
  return combineEffects(<Object, Effect<NaviItemState>>{
    NaviItemAction.openArticle: _openArticle,
  });
}

void _openArticle(Action action, Context<NaviItemState> ctx) {
  NaviInfoDataArticle item = action.payload;
  ArticleDetailBean articleDetailBean = ArticleDetailBean();
  articleDetailBean.title = item.title;
  articleDetailBean.url = item.link;

  Navigator.pushNamed(
    ctx.context,
    RouteConfig.webViewPage,
    arguments: {"articleDetail": articleDetailBean},
  );
}
