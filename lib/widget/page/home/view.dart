import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/material_footer.dart';
import 'package:flutter_easyrefresh/material_header.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_wan/app/utils/keep_alive_page.dart';
import 'package:flutter_wan/app/utils/ui_adapter.dart';
import 'package:flutter_wan/widget/page/home/widget/home_banner.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: _homeWidget(state, dispatch, viewService),
  );
}

//首页widget组装
Widget _homeWidget(
    HomeState state, Dispatch dispatch, ViewService viewService) {
  return EasyRefresh(
    controller: state.easyRefreshController,
    header: MaterialHeader(),
    footer: MaterialFooter(),
    child: ListView(children: <Widget>[
      //banner控件
      HomeBanner(
        data: state,
        onChanged: (int index) {
          dispatch(HomeActionCreator.updateBannerIndex(index));
        },
        onTap: (int index) {
          dispatch(HomeActionCreator.openBannerContent(index));
        },
      ),

      _articleList(viewService), //文章控件
    ]),
    firstRefresh: true,
    //下拉刷新
    onRefresh: () async {
      state.articleIndex = 0;
      dispatch(HomeActionCreator.onListRefresh());
    },
    //上拉加载
    onLoad: () async {
      state.articleIndex += 1;
      dispatch(HomeActionCreator.loadMoreArticle(state.articleIndex));

      await Future.delayed(Duration(seconds: 2), () {
        state.easyRefreshController.finishLoad(success: true, noMore: false);
      });
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
      ));
}
