import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
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
    body: keepAliveWrapper(_SwiperView()),
  );
}

Widget _SwiperView(){
  return Container(
    height: 180,
    child: Swiper(
      itemCount: _homeState.banners.length,
      itemBuilder:  (BuildContext context, int index) {
        return _getImageList()[index];
      },
    )
  );
}

List<Widget> _getImageList() {
  List<Widget> imageList = List();

  for(int i=0; i<_homeState.banners.length; i++) {
    imageList
      ..add(Image.network(
        _homeState.banners[i].imagePath,
        fit: BoxFit.fill,
      ));
  }

  return imageList;
}
