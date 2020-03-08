import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/common/article_detail_bean.dart';
import 'package:flutter_wan/bean/home/home_article_bean.dart';

class WebViewState implements Cloneable<WebViewState> {
  ArticleDetailBean articleDetail;
  double progress;

  @override
  WebViewState clone() {
    return WebViewState()
        ..articleDetail = articleDetail
        ..progress = progress;
  }
}

WebViewState initState(Map<String, dynamic> args) {
  //获取从列表传过来的值
  ArticleDetailBean articleDetailBean = args["articleDetail"];
  return WebViewState()
      ..articleDetail = articleDetailBean;
}
