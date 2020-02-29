import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_wan/widget/utils/keep_alive_page.dart';

import 'action.dart';
import 'state.dart';

HomeState _homeState;
bool onlyOne = true;

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  _homeState = state;

  if(onlyOne) {
    dispatch(HomeActionCreator.initData());
    onlyOne = false;
  }

  initState(null);
  return Scaffold(
    body: keepAliveWrapper(_swiperView()),
  );
}

Widget _swiperView(){
  return Container(
    height: ScreenUtil().setWidth(400),
    child: Swiper(
      itemCount: _homeState.banners.length,
      itemBuilder:  (BuildContext context, int index) {
        return _homeState.bannerImages[index];
      },
      autoplay: false,
      autoplayDelay: 5000, //自动播放时间间隔
      pagination: SwiperPagination(),
    )
  );
}


