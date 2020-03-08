import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart' hide WebViewState;

import 'action.dart';
import 'state.dart';

Widget buildView(WebViewState state, Dispatch dispatch, ViewService viewService) {
  FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();
  flutterWebviewPlugin.onProgressChanged.listen((progress){
    println(progress);
    dispatch(WebViewActionCreator.onProgress(progress)); //更新进度条
  });

  return WebviewScaffold(
    appBar: AppBar(
      title: Text(state.articleDetail.title),
      backgroundColor: Colors.lightBlue,
      bottom: PreferredSize(
          child: _progressBar(state.progress, viewService.context),
          preferredSize: Size.fromHeight(0.5),
      ),
    ),
      url: state.articleDetail.url
  );

//  官方webview用法
//  return Scaffold(
//    appBar: AppBar(title: Text(state.articleDetail.title)),
//    body: WebView(
//      initialUrl: state.articleDetail.url,
//    ),
//  );
}


_progressBar(double progress,BuildContext context) {

  return LinearProgressIndicator(
    backgroundColor: Colors.white70.withOpacity(0),
    value: progress == 1.0 ? 0 : progress,
    valueColor: new AlwaysStoppedAnimation<Color>(Colors.cyanAccent),
  );
}


