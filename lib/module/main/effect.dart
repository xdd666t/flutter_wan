import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';
import 'package:flutter_wan/app/utils/cache/sp_util.dart';
import 'package:flutter_wan/app/utils/ui/view_util.dart';

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    //初始化
    Lifecycle.initState: _init,
    //切换tab
    MainAction.selectTab: _selectTab,
    //选择相应抽屉内部的item
    MainAction.clickDrawer: _clickDrawer,
  });
}

void _init(Action action, Context<MainState> ctx) async {
  await ViewUtil.initFinish();
  //需要等待SpUtil中对象初始化完成
  _initUserInfo(ctx);
}

void _initUserInfo(Context<MainState> ctx) async {
  //判断下用户是否登录
  String userName = await SpUtil.get('userName');
  if (userName != null) {
    ctx.state.drawerItems[0].title = userName;
    ctx.dispatch(MainActionCreator.onRefresh());
  }
}

void _clickDrawer(Action action, Context<MainState> ctx) async {
  switch (action.payload) {
    case 'person':
      //如果不是登录状态,则去跳转登录界面
      var isRefresh = await Navigator.pushNamed(
        ctx.context,
        RouteConfig.loginPage,
      );
      if (isRefresh ?? false) {
        _initUserInfo(ctx);
      }
      break;
    case 'myCollect':
      Navigator.pushNamed(ctx.context, RouteConfig.collectPage);
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
