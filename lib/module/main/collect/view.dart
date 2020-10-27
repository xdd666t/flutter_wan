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
    body: _body(state, dispatch, viewService),
  );
}

Widget _body(CollectState state, Dispatch dispatch, ViewService viewService) {
  return EasyRefresh(
    controller: state.easyRefreshController,
    header: MaterialHeader(),
    footer: MaterialFooter(),
    firstRefresh: true,
    enableControlFinishRefresh: true,
    enableControlFinishLoad: true,
    onRefresh: () async {
      //下拉刷新
      dispatch(CollectActionCreator.onListRefresh());
    },
    onLoad: () async {
      //上拉加载
      dispatch(CollectActionCreator.onListLoad());
    },
    child: ListView.builder(
      itemBuilder: viewService.buildAdapter().itemBuilder,
      itemCount: viewService.buildAdapter().itemCount,
    ),
  );
}
