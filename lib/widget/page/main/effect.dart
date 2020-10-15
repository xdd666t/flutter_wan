import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/app/utils/ui_adapter.dart';

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    //初始化
    Lifecycle.initState: _init,
    //切换tab
    MainAction.selectTab: _selectTab,
  });
}

void _init(Action action, Context<MainState> ctx) {
  ///在第一个页面初始化一次即可
  ///初始化页面适配配置
  initUiAdapter(ctx.context);
}

void _selectTab(Action action, Context<MainState> ctx) {
  ctx.state.selectedIndex = action.payload;

  ctx.dispatch(MainActionCreator.onRefresh());
}
