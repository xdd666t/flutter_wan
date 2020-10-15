import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/bean/home/banner_bean.dart';

import 'home_article_item/state.dart';

//TODO replace with your own action
enum HomeAction {
  //获取轮播图图片Url(Ui更新)
  updateBannerData,
  //获取轮播图图片Url(Ui更新)
  updateBannerImage,
  updateIndex,
  updateArticleItem,
  //加载更多新闻
  loadMoreArticle,
  //打开banner文章内容
  openBannerContent,
}

class HomeActionCreator {
  //加载更多新闻
  static Action loadMoreArticle(int index) {
    return Action(HomeAction.loadMoreArticle, payload: index);
  }


  static Action openBannerContent(int index) {
    return Action(HomeAction.openBannerContent, payload: index);
  }


  static Action updateBannerData(List<BannerData> bannerData) {
    return Action(HomeAction.updateBannerData, payload: bannerData);
  }


  static Action updateBannerImage(List<Widget> bannerImage) {
    return Action(HomeAction.updateBannerImage, payload: bannerImage);
  }

  //获取轮播数据当前被选下标(Ui更新)
  static Action updateBannerIndex(int bannerImage) {
    return Action(HomeAction.updateIndex, payload: bannerImage);
  }

  //获取轮播数据当前被选下标(Ui更新)
  static Action updateArticleItem(List<HomeArticleItemState> itemList) {
    return Action(HomeAction.updateArticleItem, payload: itemList);
  }
}
