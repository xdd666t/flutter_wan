import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';
import 'package:flutter_wan/bean/common/article_detail_bean.dart';

import 'action.dart';
import 'state.dart';

Effect<CollectItemState> buildEffect() {
  return combineEffects(<Object, Effect<CollectItemState>>{
    CollectItemAction.toDetail: _toDetail,
  });
}

void _toDetail(Action action, Context<CollectItemState> ctx) {
  var data = ctx.state.item;
  ArticleDetailBean articleDetailBean = ArticleDetailBean(
    url: data.link,
    title: data.title,
    id: data.id,
  );

  Navigator.pushNamed(
    ctx.context,
    RouteConfig.webViewPage,
    arguments: {
      "articleDetail": articleDetailBean,
    },
  );
}
