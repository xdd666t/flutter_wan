import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/material_footer.dart';
import 'package:flutter_easyrefresh/material_header.dart';
import 'package:flutter_wan/widget/page/home/widget/home_banner.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: _body(state, dispatch, viewService),
  );
}

//首页widget组装
Widget _body(HomeState state, Dispatch dispatch, ViewService viewService) {
  return EasyRefresh(
    controller: state.easyRefreshController,
    header: MaterialHeader(),
    footer: MaterialFooter(),
    child: ListView(children: <Widget>[
      //banner控件
      HomeBanner(
        data: state,
        onChanged: (int index) {
          dispatch(HomeActionCreator.switchBanner(index));
        },
        onTap: (int index) {
          dispatch(HomeActionCreator.openBannerContent(index));
        },
      ),

      _articleList(viewService), //文章控件
    ]),
    firstRefresh: true,
    enableControlFinishRefresh: true,
    enableControlFinishLoad: true,
    onRefresh: () async {
      //下拉刷新
      dispatch(HomeActionCreator.onListRefresh());
    },
    onLoad: () async {
      //上拉加载
      dispatch(HomeActionCreator.onListLoad());
    },
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
