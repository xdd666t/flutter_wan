import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_wan/bean/home/banner_bean.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';

import 'adapter.dart';
import 'home_article_item/state.dart';

class HomeState extends MutableSource implements Cloneable<HomeState> {
  //轮播所有数据
  List<BannerData> banners;

  //所有轮播图
  List<Widget> bannerImages;

  //当前展示的轮播图下标
  int bannerIndex;

  //文章列表数据
  List<HomeArticleBean> mList; //总数据源

  //item数据源
  List<HomeArticleItemState> articleList;

  //文章列表索引  处理分页逻辑
  int articleIndex;

  //刷新控制器
  EasyRefreshController easyRefreshController;

  @override
  HomeState clone() {
    return HomeState()
      ..banners = banners
      ..bannerImages = bannerImages
      ..bannerIndex = bannerIndex
      ..articleList = articleList;
  }

  @override
  Object getItemData(int index) => articleList[index];

  @override
  String getItemType(int index)  => HomeArticleAdapter.articleType;

  @override
  int get itemCount => articleList.length == null ? 0 : articleList.length;

  @override
  void setItemData(int index, Object data)  => articleList[index] = data;
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()
    ..easyRefreshController = EasyRefreshController()
    ..banners = List()
    ..articleList = List()
    ..bannerImages = List()
    ..articleIndex = 0
    ..bannerIndex = 0;
}
