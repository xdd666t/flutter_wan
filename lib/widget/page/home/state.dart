import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/bean/home/banner_bean.dart';

class HomeState implements Cloneable<HomeState> {
  List<BannerData> banners; //轮播所有数据
  List<Widget> bannerImages; //所有轮播图
  int bannerIndex; //当前展示的轮播图下标


  @override
  HomeState clone() {
    return HomeState()
        ..banners = banners
        ..bannerImages = bannerImages
        ..bannerIndex = bannerIndex;
  }
}

HomeState initState(Map<String, dynamic> args) {
  println("实例化............");
  return HomeState()
    ..banners = List()
    ..bannerImages = List()
    ..bannerIndex = 0;
}
