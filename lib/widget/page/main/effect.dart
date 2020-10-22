import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';
import 'package:flutter_wan/app/utils/show/toast_util.dart';
import 'package:flutter_wan/app/utils/ui/view_util.dart';

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    //切换tab
    MainAction.selectTab: _selectTab,
    //选择相应抽屉内部的item
    MainAction.clickDrawer: _clickDrawer,

    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<MainState> ctx) async {
  await ViewUtil.initFinish();
  showToast("1111111111111");
}

void _clickDrawer(Action action, Context<MainState> ctx) {
  switch (action.payload) {
    case 'person':
      //如果不是登录状态,则去跳转登录界面
      Navigator.pushNamed(ctx.context, RouteConfig.loginPage);
      break;
    case 'myCollect':
      break;
    case 'setting':
      break;
    case 'about':
      break;
    case 'feedback':
      break;
  }
}

void _selectTab(Action action, Context<MainState> ctx) {
  ctx.state.selectedIndex = action.payload;

  ctx.dispatch(MainActionCreator.onRefresh());
}
