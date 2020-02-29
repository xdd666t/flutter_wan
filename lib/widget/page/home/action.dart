import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/home/banner_bean.dart';

//TODO replace with your own action
enum HomeAction {initData, updateBannerData}

class HomeActionCreator {
  //初始化数据
  static Action initData() {
    return Action(HomeAction.initData);
  }





  //获取轮播图图片Url(Ui更新)
  static Action updateBannerData(List<BannerData> bannerData) {
    return Action(HomeAction.updateBannerData, payload: bannerData);
  }

}
