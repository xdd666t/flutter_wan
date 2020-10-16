import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    //切换tab
    MainAction.selectTab: _selectTab,
    //选择相应抽屉内部的item
    MainAction.clickDrawer: _clickDrawer,
  });
}

void _clickDrawer(Action action, Context<MainState> ctx) {
  switch (action.payload) {
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
