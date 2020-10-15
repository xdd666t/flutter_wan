import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';
import 'package:flutter_wan/bean/common/article_detail_bean.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';
import 'package:flutter_wan/widget/page/home/home_article_item/state.dart';

import 'action.dart';

Effect<HomeArticleItemState> buildEffect() {
  return combineEffects(<Object, Effect<HomeArticleItemState>>{
    //打开文章
    HomeArticleItemAction.openArticleContent: _openArticleContent,
  });
}

void _openArticleContent(Action action, Context<HomeArticleItemState> ctx) {
  //传递过来的数据
  HomeArticleDataData data = ctx.state.itemDetail;
  ArticleDetailBean articleDetailBean = ArticleDetailBean();
  articleDetailBean.url = data.link;
  articleDetailBean.title = data.title;

  Navigator.pushNamed(
    ctx.context,
    RouteConfig.webViewPage,
    arguments: {"articleDetail": articleDetailBean},
  );
}
