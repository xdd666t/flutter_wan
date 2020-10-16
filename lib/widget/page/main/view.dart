import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/app/utils/ui_adapter.dart';
import 'package:flutter_wan/widget/page/main/widget/main_body.dart';
import 'package:flutter_wan/widget/page/main/widget/main_bottom_navigation.dart';
import 'package:flutter_wan/widget/page/main/widget/main_drawer.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  //此处初始化一次即可,effect里面初始化会报错
  initUiAdapter(viewService.context);

  return Scaffold(
    appBar: AppBar(title: Text("玩Android")),
    //侧边抽屉模块
    drawer: MainDrawer(
      data: state,
      onTap: (String tag) {
        dispatch(MainActionCreator.clickDrawer(tag));
      },
    ),
    //页面主体
    body: MainBody(
      data: state,
      onChanged: (int index) {
        dispatch(MainActionCreator.selectTab(index));
      },
    ),
    //底部导航
    bottomNavigationBar: MainBottomNavigation(
      data: state,
      onTap: (int index) {
        dispatch(MainActionCreator.selectTab(index));
      },
    ),
  );
}
