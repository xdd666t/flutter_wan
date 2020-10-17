import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/bean/home/banner_bean.dart';

import 'home_article_item/state.dart';

//TODO replace with your own action
enum HomeAction {
  //切换banner数据
  switchBanner,
  //打开banner文章内容
  openBannerContent,
  //上拉加载
  onListLoad,
  //下拉刷新
  onListRefresh,
  //界面刷新
  onRefresh,
}

class HomeActionCreator {
  static Action onRefresh() {
    return Action(HomeAction.onRefresh);
  }

  static Action onListLoad() {
    return Action(HomeAction.onListLoad);
  }

  static Action onListRefresh() {
    return Action(HomeAction.onListRefresh);
  }

  static Action openBannerContent(int index) {
    return Action(HomeAction.openBannerContent, payload: index);
  }

  static Action switchBanner(int bannerImage) {
    return Action(HomeAction.switchBanner, payload: bannerImage);
  }
}
