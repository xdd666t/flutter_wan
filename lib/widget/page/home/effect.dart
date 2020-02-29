import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  ScreenUtil.init(ctx.context, width: 750, height: 1334);
}

//获取Banner数据
void _getBannerData(Action action, Context<HomeState> ctx) async{
  println("请求banner数据");
  try{
    Response response = await Dio().get(ApiUrl.GET_BANNER_URL); //获取banner数据
    BannerBean bannerBean = BannerBean().fromJson(json.decode(response.toString()));
    ctx.state.banners = bannerBean.data;
    ctx.state.bannerImages = _getImageList(ctx);


    ctx.dispatch(HomeActionCreator.updateBannerData(ctx.state.banners));
    ctx.dispatch(HomeActionCreator.updateBannerImage(ctx.state.bannerImages));
  }catch(e) {
    println(e.toString());
  }
}

//获取Banner图片数据
List<Widget> _getImageList(Context<HomeState> ctx) {
  List<Widget> imageList = List();
  for(int i=0; i<ctx.state.banners.length; i++) {
    imageList
      ..add(Image.network(
        ctx.state.banners[i].imagePath,
        fit: BoxFit.fill,
      ));
  }
  return imageList;
}