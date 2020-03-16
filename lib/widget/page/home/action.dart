import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/bean/home/banner_bean.dart';

import 'home_article_item/state.dart';

//TODO replace with your own action
enum HomeAction {updateBannerData, updateBannerImage, updateIndex, updateArticleItem,
  loadMoreArticle, //加载更多新闻
  openBannnerContent, //打开banner文章内容
}

class HomeActionCreator {
  //加载更多新闻
  static Action loadMoreArticle(int index) {
    return Action(HomeAction.loadMoreArticle, payload: index);
  }

  //打开banner
  static Action openBannnerContent(int index) {
    return Action(HomeAction.openBannnerContent, payload: index);
  }



  //获取轮播图图片Url(Ui更新)
  static Action updateBannerData(List<BannerData> bannerData) {
    return Action(HomeAction.updateBannerData, payload: bannerData);
  }

  //获取轮播图图片Url(Ui更新)
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
