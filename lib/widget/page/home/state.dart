import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/bean/home/banner_bean.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';
import 'package:flutter_wan/widget/component/article_list/state.dart';

class HomeState implements Cloneable<HomeState> {
  //轮播所有数据
  List<BannerData> banners;

  //所有轮播图
  List<Widget> bannerImages;

  //当前展示的轮播图下标
  int bannerIndex;

  //文章列表数据
  List<HomeArticleBean> mList; //总数据源

  //文章数据源
  ArticleListState subState;

  @override
  HomeState clone() {
    return HomeState()
      ..subState = subState
      ..banners = banners
      ..bannerImages = bannerImages
      ..bannerIndex = bannerIndex;
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()
    ..subState = ArticleListState()
    ..banners = []
    ..bannerImages = []
    ..bannerIndex = 0;
}

///文章列表连接器
class ArticleConnector extends ConnOp<HomeState, ArticleListState>
    with ReselectMixin<HomeState, ArticleListState> {
  @override
  ArticleListState computed(HomeState state) {
    return state.subState.clone();
  }

  @override
  void set(HomeState state, ArticleListState subState) {
    state.subState = subState;
  }
}
