import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/navi/navi_info_bean.dart';
import 'package:flutter_wan/http/api.dart';
import 'package:flutter_wan/widget/page/navi/navi_item/state.dart';
import 'action.dart';
import 'state.dart';

Effect<NaviState> buildEffect() {
  return combineEffects(<Object, Effect<NaviState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<NaviState> ctx)async {
  
  Response response = await Dio().get(ApiUrl.GET_NAVI_INFO);
  NaviInfoBean naviInfoBean = NaviInfoBean().fromJson(json.decode(response.toString()));

  List<NaviItemState> items = List.generate(naviInfoBean.data.length, (index){
    return NaviItemState(itemDetail: naviInfoBean.data[index]);
  });
  ctx.dispatch(NaviActionCreator.updateItem(items));
}
