import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/home/banner_bean.dart';
import 'package:flutter_wan/http/api.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    HomeAction.initData: _initData,
  });
}

void _initData(Action action, Context<HomeState> ctx) {
  _getBannerData(action, ctx);
}



void _getBannerData(Action action, Context<HomeState> ctx) async{
  println("请求banner数据");
  try{
    Response response = await Dio().get(ApiUrl.GET_BANNER_URL); //获取banner数据
    BannerBean bannerBean = BannerBean().fromJson(json.decode(response.toString()));
    ctx.dispatch(HomeActionCreator.updateBannerData(bannerBean.data));
    println(response);
  }catch(e) {
    println(e.toString());
  }


}
