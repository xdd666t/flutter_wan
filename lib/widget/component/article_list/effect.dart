import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';
import 'package:flutter_wan/http/api.dart';

import 'action.dart';
import 'item/state.dart';
import 'state.dart';

Effect<ArticleListState> buildEffect() {
  return combineEffects(<Object, Effect<ArticleListState>>{
    //上拉加载
    ArticleListAction.onListLoad: _onListLoad,
    //下拉刷新
    ArticleListAction.onListRefresh: _onListRefresh,
  });
}

void _onListRefresh(Action action, Context<ArticleListState> ctx) {
  ctx.state.articleIndex = 0;
  if (ctx.state.type == 0) {
    _loadHomeArticle(ctx);
  } else {
    _loadAllArticle(ctx);
  }
}

void _onListLoad(Action action, Context<ArticleListState> ctx) async {
  ctx.state.articleIndex += 1;
  if (ctx.state.type == 0) {
    _loadHomeArticle(ctx);
  }
}

//加载文章数据
void _loadHomeArticle(Context<ArticleListState> ctx) async {
  try {
    int index = ctx.state.articleIndex;
    Response response = await Dio()
        .get(ApiUrl.GET_HOME_ARTICLE + index.toString() + "/json"); //获取首页文章
    HomeArticleBean homeArticleBean =
        HomeArticleBean.fromJson(json.decode(response.toString()));

    List<Datas> items = homeArticleBean.data.datas;
    List<ArticleItemState> tempList = List.generate(items.length, (index) {
      return ArticleItemState(itemDetail: items[index]);
    });
    if (index == 0) {
      ctx.state.articleList = tempList;
      //关闭刷新动画
      ctx.state.easyRefreshController.finishRefresh();
    } else {
      ctx.state.articleList.addAll(tempList);
      //关闭加载动画
      await Future.delayed(Duration(milliseconds: 500));
      ctx.state.easyRefreshController.finishLoad();
    }

    //更新列表
    ctx.dispatch(ArticleListActionCreator.onRefresh());
  } catch (e) {
    println("获取首页文章数据失败: " + e.toString());
  }
}

//加载文章数据
void _loadAllArticle(Context<ArticleListState> ctx) async {
  Response response = await Dio().get(
    ApiUrl.GET_TREE_DETAIL,
    queryParameters: {"cid": ctx.state.articleId},
  );
  ctx.state.easyRefreshController.finishRefresh();

  HomeArticleBean homeArticleBean =
      HomeArticleBean.fromJson(json.decode(response.toString()));
  List<Datas> items = homeArticleBean.data.datas;
  var itemList = List.generate(items.length, (index) {
    return ArticleItemState(itemDetail: items[index]);
  });

  //更新列表
  ctx.state.articleList = itemList;
  //更新列表
  ctx.dispatch(ArticleListActionCreator.onRefresh());
}
