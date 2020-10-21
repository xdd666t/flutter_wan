import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';
import 'package:flutter_wan/bean/common/article_detail_bean.dart';
import 'package:flutter_wan/bean/project/project_detail_bean.dart';

import 'action.dart';
import 'state.dart';

Effect<ProjectTabItemState> buildEffect() {
  return combineEffects(<Object, Effect<ProjectTabItemState>>{
    ProjectTabItemAction.openArticle: _openArticle,
  });
}

void _openArticle(Action action, Context<ProjectTabItemState> ctx) {
  Datas item = action.payload;
  ArticleDetailBean articleDetailBean = ArticleDetailBean();
  articleDetailBean.title = item.title;
  articleDetailBean.url = item.link;

  Navigator.pushNamed(
    ctx.context,
    RouteConfig.webViewPage,
    arguments: {"articleDetail": articleDetailBean},
  );
}
