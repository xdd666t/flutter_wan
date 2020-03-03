import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/bean/home/banner_bean.dart';
import 'package:flutter_wan/widget/page/home/adapter/home_article_item/state.dart';

//TODO replace with your own action
enum HomeAction {updateBannerData, updateBannerImage, updateIndex, updateArticleItem}

class HomeActionCreator {



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
