import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'widget/home_banner.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Column(children: [
      HomeBanner(
        data: state,
        onChanged: (int index) {
          dispatch(HomeActionCreator.switchBanner(index));
        },
        onTap: (int index) {
          dispatch(HomeActionCreator.openBannerContent(index));
        },
      ),
      Expanded(child: viewService.buildComponent("ArticleList"))
    ]),
  );
}
