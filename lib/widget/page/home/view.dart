import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
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
  return Column(
    children: [
      HomeBanner(
        data: state,
        onChanged: (int index) {
          dispatch(HomeActionCreator.switchBanner(index));
        },
        onTap: (int index) {
          dispatch(HomeActionCreator.openBannerContent(index));
        },
      ),
      Expanded(
        child: viewService.buildComponent("ArticleList"),
      )
    ],
  );
}
