import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/page/web/widget/common_webview.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    WebViewState state, Dispatch dispatch, ViewService viewService) {
  return CommonWebView(
    data: state,
    onCollect: (){
      //收藏
      dispatch(WebViewActionCreator.collect());
    },
    onPageStart: () {
      //页面开始加载,打开加载条
      dispatch(WebViewActionCreator.isLoading(true));
    },
    onPageEnd: () {
      //完成网页加载,关闭加载条
      dispatch(WebViewActionCreator.isLoading(false));
    },
  );
}
