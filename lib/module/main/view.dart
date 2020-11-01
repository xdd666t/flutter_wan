import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/app/utils/ui/ui_adapter.dart';
import 'package:flutter_wan/module/main/widget/main_app_bar.dart';

import 'action.dart';
import 'state.dart';
import 'widget/main_body.dart';
import 'widget/main_bottom_navigation.dart';
import 'widget/main_drawer.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  //此处初始化一次即可,effect里面初始化会报错
  initUiAdapter(viewService.context);

  return Scaffold(
    //顶部AppBar
    appBar: mainAppBar(
      onTap: (){

      }
    ),
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
