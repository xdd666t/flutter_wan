import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/home/banner_bean.dart';

class HomeState implements Cloneable<HomeState> {
  List<BannerData> banners; //轮播图url

  @override
  HomeState clone() {
    return HomeState()
        ..banners = banners;
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()
    ..banners = List();
}
