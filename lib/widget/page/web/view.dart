import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(WebViewState state, Dispatch dispatch, ViewService viewService) {


//  官方webview用法
  return Scaffold(
    appBar: AppBar(title: Text(state.articleDetail.title)),
    body: Stack(
      children: <Widget>[
        WebView(
          initialUrl: state.articleDetail.url,
          javascriptMode: JavascriptMode.unrestricted,
          onPageStarted: (url){
            dispatch(WebViewActionCreator.isLoading(true)); //k开始网页加载,打开加载条
          },
          onPageFinished: (url){
            dispatch(WebViewActionCreator.isLoading(false)); //完成网页加载,关闭加载条
          },
        ),
        //加载动画
        Offstage(
          offstage: !state.isLoading,
          child: Center(
            child: CircularProgressIndicator(), //圆形加载动画
          ),
        )
      ],
    )


  );


}



