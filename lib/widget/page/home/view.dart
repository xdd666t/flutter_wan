import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_wan/widget/utils/keep_alive_page.dart';
import 'package:flutter_wan/widget/utils/ui_adapter.dart';

import 'action.dart';
import 'state.dart';

HomeState _homeState;
Dispatch _dispatch;

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  _homeState = state;
  _dispatch = dispatch;
  ScreenUtil.init(viewService.context, width: 750, height: 1334);

  return Scaffold(
    body: keepAliveWrapper(_swiperView()),
  );
}

//顶部轮播图
Widget _swiperView(){
  return Container(
    height: setWidth(400),
    child: Stack(
      children: <Widget>[
        _bannerImage(),
        _bannerText(),
      ],
    )
  );
}
//顶部banner图片显示
Widget _bannerImage(){
  return Swiper(
    itemCount: _homeState.bannerImages.length,
    itemBuilder:  (BuildContext context, int index) {
      _dispatch(HomeActionCreator.updateBannerIndex(index)); //更新当前被选中的index
      return _homeState.bannerImages[index];
    },
    autoplay: _homeState.bannerImages.length != 0,
    autoplayDelay: 5000, //自动播放时间间隔
    //原点指示器
    pagination: SwiperPagination(
      alignment: Alignment.bottomRight,
      margin: EdgeInsets.only(bottom: setWidth(100), right: setWidth(15)),
      builder: DotSwiperPaginationBuilder(size: setWidth(12), activeSize: setWidth(12))
    ),
  );
}
//顶部banner文字显示
Widget _bannerText(){
  return Container(
    alignment: Alignment.bottomCenter,
    child: Container(
        height: setWidth(80),
        width: double.infinity,
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.black.withAlpha(100),
              Colors.black.withAlpha(100),
            ],
          ),
        ),
        child: Center(
          child: Text(
            _homeState.banners.length == 0 ? "" : _homeState.banners[_homeState.bannerIndex].title,
            style: TextStyle(color: Colors.white, fontSize: setSp(30)),
          ),
        )
    ),
  );
}


//新闻列表


