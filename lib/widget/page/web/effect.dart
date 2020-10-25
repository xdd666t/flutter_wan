import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/app/utils/show/toast_util.dart';
import 'package:flutter_wan/bean/user/common_response.dart';
import 'package:flutter_wan/http/api.dart';
import 'package:flutter_wan/http/http.dart';

import 'action.dart';
import 'state.dart';

Effect<WebViewState> buildEffect() {
  return combineEffects(<Object, Effect<WebViewState>>{
    //是否显示加载动画
    WebViewAction.isLoading: _isLoading,
    //选中和取消收藏操作
    WebViewAction.collect: _collect,
  });
}

void _collect(Action action, Context<WebViewState> ctx) async {
  var detail = ctx.state.detail;
  String url;
  //收藏和取消收藏
  if (detail.isCollect) {
    url = '${ApiUrl.CANCEL_COLLECT}${detail.id.toString()}/json';
  } else {
    url = '${ApiUrl.COLLECT}${detail.id.toString()}/json';
  }
  var result = await Dio().post(
    url,
    options: await getOptions(),
  );
  //解析结果
  CommonResponse response =
      CommonResponse.fromJson(json.decode(result.toString()));
  if (response.errorCode == 0) {
    detail.isCollect = !detail.isCollect;
    showToast(detail.isCollect ? '收藏成功' : '取消收藏成功');

    ctx.dispatch(WebViewActionCreator.onRefresh());
  } else {
    showToast(response.errorMsg);
  }
}

void _isLoading(Action action, Context<WebViewState> ctx) async {
  ctx.state.isLoading = action.payload;
  ctx.dispatch(WebViewActionCreator.onRefresh());
}
