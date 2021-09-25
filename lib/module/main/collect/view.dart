import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_wan/module/main/collect/action.dart';

import 'state.dart';

Widget buildView(
    CollectState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('收藏'),
      elevation: 0,
    ),
    body: EasyRefresh(
      controller: state.easyRefreshController,
      header: MaterialHeader(),
      footer: MaterialFooter(),
      firstRefresh: true,
      enableControlFinishRefresh: true,
      enableControlFinishLoad: true,
      //下拉刷新
      onRefresh: () async => dispatch(CollectActionCreator.onListRefresh()),
      //上拉加载
      onLoad: () async => dispatch(CollectActionCreator.onListLoad()),
      child: ListView.builder(
        itemBuilder: viewService.buildAdapter().itemBuilder,
        itemCount: viewService.buildAdapter().itemCount,
      ),
    ),
  );
}
