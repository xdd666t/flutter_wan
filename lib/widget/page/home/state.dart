import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/bean/home/banner_bean.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';
import 'package:flutter_wan/widget/page/home/adapter/home_article_item/state.dart';

import 'adapter/adapter.dart';

class HomeState extends MutableSource implements Cloneable<HomeState> {
  List<BannerData> banners; //轮播所有数据
  List<Widget> bannerImages; //所有轮播图
  int bannerIndex; //当前展示的轮播图下标


  //文章列表数据
  List<HomeArticleBean> mList;  //总数据源
  List<HomeArticleItemState> articleList;  //item数据源
  int articleIndex; //文章列表索引  处理分页逻辑

  @override
  HomeState clone() {
    return HomeState()
        ..banners = banners
        ..bannerImages = bannerImages
        ..bannerIndex = bannerIndex
        ..articleList = articleList;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return articleList[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return HomeArticleAdapter.articleType;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => articleList.length;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    articleList[index] = data;
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()
    ..banners = List()
    ..articleList = List()
    ..bannerImages = List()
    ..articleIndex = 0
    ..bannerIndex = 0;
}


////连接item view的使用
//class HomeArticleItemConnector extends ConnOp<HomeState, HomeArticleItemState> with ReselectMixin{
//  @override
//  HomeArticleItemState computed(HomeState state) {
//    // TODO: implement computed
//    return HomeArticleItemState()
//        ..articleList = state.articleList;
//  }
//
//  @override
//  List factors(HomeState state) {
//    // TODO: implement factors
//    return state.articleList ?? [];
//  }
//
//}