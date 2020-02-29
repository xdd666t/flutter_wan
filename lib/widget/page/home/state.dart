import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/bean/home/banner_bean.dart';

class HomeState implements Cloneable<HomeState> {
  List<BannerData> banners; //轮播图url
  List<Widget> bannerImages;


  @override
  HomeState clone() {
    return HomeState()
        ..banners = banners;
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()
    ..banners = List()
    ..bannerImages = List();

}
