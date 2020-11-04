import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';
import 'package:flutter_wan/bean/common/article_detail_bean.dart';
import 'package:flutter_wan/bean/home/banner_bean.dart';
import 'package:flutter_wan/http/api.dart';

import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    //初始化操作
    Lifecycle.initState: _init,
    //打开文章
    HomeAction.openBannerContent: _openBannerContent,
    //切换banner
    HomeAction.switchBanner: _switchBanner,
  });
}

void _switchBanner(Action action, Context<HomeState> ctx) {
  ctx.state.bannerIndex = action.payload;
  ctx.dispatch(HomeActionCreator.onRefresh());
}

void _init(Action action, Context<HomeState> ctx) {
  _getBannerData(action, ctx);
}

//获取Banner数据
void _getBannerData(Action action, Context<HomeState> ctx) async {
  try {
    Response response = await Dio().get(ApiUrl.GET_BANNER_URL); //获取banner数据
    BannerBean bannerBean =
        BannerBean.fromJson(json.decode(response.toString()));
    ctx.state.banners = bannerBean.data;
    ctx.state.bannerImages = _getImageList(ctx);

    ctx.dispatch(HomeActionCreator.onRefresh());
  } catch (e) {
    println("获取首页banner数据失败: " + e.toString());
  }
}

//获取Banner图片数据
List<Widget> _getImageList(Context<HomeState> ctx) {
  List<Widget> imageList = List();
  for (int i = 0; i < ctx.state.banners.length; i++) {
    imageList
      ..add(Image.network(
        ctx.state.banners[i].imagePath,
        fit: BoxFit.fill,
      ));
  }
  return imageList;
}

//打开banner文章内容
void _openBannerContent(Action action, Context<HomeState> ctx) {
  int index = action.payload;
  var data = ctx.state.banners[index];
  ArticleDetailBean articleDetailBean = ArticleDetailBean(
    url: data.url,
    title: data.title,
    id: data.id,
    isCollect: null,
  );

  Navigator.pushNamed(
    ctx.context,
    RouteConfig.webViewPage,
    arguments: {"articleDetail": articleDetailBean},
  );
}
