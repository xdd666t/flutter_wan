import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter_wan/bean/common/article_detail_bean.dart';
import 'action.dart';
import 'state.dart';

Effect<ProjectTabItemState> buildEffect() {
  return combineEffects(<Object, Effect<ProjectTabItemState>>{
    ProjectTabItemAction.openArticle: _openArticle,
  });
}

void _openArticle(Action action, Context<ProjectTabItemState> ctx) {
  ArticleDetailBean articleDetailBean = ArticleDetailBean();
  articleDetailBean.title = action.payload["title"];
  articleDetailBean.url = action.payload["url"];

  Navigator.of(ctx.context).pushNamed("webview", arguments: {"articleDetail": articleDetailBean});

}
