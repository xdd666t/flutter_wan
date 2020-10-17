import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    ArticleListState state, Dispatch dispatch, ViewService viewService) {
  return _body(state, dispatch, viewService);
}

Widget _body(
    ArticleListState state, Dispatch dispatch, ViewService viewService) {
  return EasyRefresh(
    controller: state.easyRefreshController,
    header: MaterialHeader(),
    footer: MaterialFooter(),
    child: _articleList(viewService),
    firstRefresh: true,
    enableControlFinishRefresh: true,
    enableControlFinishLoad: true,
    onRefresh: () async {
      //下拉刷新
      dispatch(ArticleListActionCreator.onListRefresh());
    },
    onLoad: state.type == 0
        ? () async {
            //上拉加载
            dispatch(ArticleListActionCreator.onListLoad());
          }
        : null,
  );
}

///文章列表
Widget _articleList(ViewService viewService) {
  return MediaQuery.removePadding(
    removeTop: true,
    context: viewService.context,
    child: ListView.builder(
      shrinkWrap: true, //为true可以解决子控件必须设置高度的问题
      physics: NeverScrollableScrollPhysics(), //禁用滑动事件
      itemBuilder: viewService.buildAdapter().itemBuilder,
      itemCount: viewService.buildAdapter().itemCount,
    ),
  );
}
