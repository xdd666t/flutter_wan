import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/app/utils/tool/string_util.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';
import 'package:flutter_wan/http/api.dart';
import 'package:flutter_wan/http/http.dart';

import 'action.dart';
import 'item/state.dart';
import 'state.dart';

Effect<ArticleListState> buildEffect() {
  return combineEffects(<Object, Effect<ArticleListState>>{
    //上拉加载
    ArticleListAction.onListLoad: _onListLoad,
    //下拉刷新
    ArticleListAction.onListRefresh: _onListRefresh,
    //刷新列表 - 其他模块使用广播来刷新列表,统一使用该方法
    //与已有的刷新和加载方法区别开
    ArticleListAction.onBoastRefresh: _onBoastRefresh,
  });
}

void _onBoastRefresh(Action action, Context<ArticleListState> ctx) {
  _onListRefresh(action, ctx);
}

void _onListRefresh(Action action, Context<ArticleListState> ctx) {
  ctx.state.articleIndex = 0;
  if (ctx.state.type == 0) {
    //首页
    _loadHomeArticle(ctx);
  } else if (ctx.state.type == 1) {
    //知识体系
    _loadAllArticle(ctx);
  } else if (ctx.state.type == 2) {
    //搜索模块
    _loadSearchArticle(ctx);
  }
}

void _onListLoad(Action action, Context<ArticleListState> ctx) async {
  ctx.state.articleIndex += 1;
  if (ctx.state.type == 0) {
    //主页
    _loadHomeArticle(ctx);
  } else if (ctx.state.type == 2) {
    //搜索模块
    _loadSearchArticle(ctx);
  }
}

//加载搜索数据
void _loadSearchArticle(Context<ArticleListState> ctx) async {
  var searchMsg = ctx.state.searchMsg;

  print('-----------$searchMsg');
  if (StringUtil.isEmpty(searchMsg)) {
    ctx.state.controller.finishRefresh(success: true);
    return;
  }

  var query = {'k': searchMsg};

  Response response = await Dio().post(
    ApiUrl.SEARCH + ctx.state.articleIndex.toString() + "/json",
    queryParameters: query,
    options: await getOptions(),
  );

  _dealData(ctx, response);
}

//加载主页数据
void _loadHomeArticle(Context<ArticleListState> ctx) async {
  //获取首页文章
  Response response = await Dio().get(
    ApiUrl.GET_HOME_ARTICLE + ctx.state.articleIndex.toString() + "/json",
    options: await getOptions(),
  );

  _dealData(ctx, response);
}

///解析数据
void _dealData(Context<ArticleListState> ctx, Response response) async {
  HomeArticleBean homeArticleBean =
      HomeArticleBean.fromJson(json.decode(response.toString()));
  List<Datas> items = homeArticleBean.data.datas;
  List<ArticleItemState> tempList = List.generate(items.length, (index) {
    return ArticleItemState(itemDetail: items[index]);
  });
  if (ctx.state.articleIndex == 0) {
    ctx.state.items = tempList;
    //关闭刷新动画
    ctx.state.controller.finishRefresh();
  } else {
    ctx.state.items.addAll(tempList);
    //关闭加载动画
    await Future.delayed(Duration(milliseconds: 500));
    ctx.state.controller.finishLoad();
  }
  //更新列表
  ctx.dispatch(ArticleListActionCreator.onRefresh());
}

//加载知识体系模块数据
void _loadAllArticle(Context<ArticleListState> ctx) async {
  Response response = await Dio().get(
    ApiUrl.GET_TREE_DETAIL,
    queryParameters: {"cid": ctx.state.articleId},
    options: await getOptions(),
  );
  ctx.state.controller.finishRefresh();

  HomeArticleBean homeArticleBean =
      HomeArticleBean.fromJson(json.decode(response.toString()));
  List<Datas> items = homeArticleBean.data.datas;
  var itemList = List.generate(items.length, (index) {
    return ArticleItemState(itemDetail: items[index]);
  });

  //更新列表
  ctx.state.items = itemList;
  //更新列表
  ctx.dispatch(ArticleListActionCreator.onRefresh());
}
