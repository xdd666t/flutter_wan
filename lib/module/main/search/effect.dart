import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/app/utils/tool/string_util.dart';

import 'action.dart';
import 'state.dart';

Effect<SearchState> buildEffect() {
  return combineEffects(<Object, Effect<SearchState>>{
    SearchAction.search: _search,
  });
}

void _search(Action action, Context<SearchState> ctx) {
  //搜索
  String searchMsg = action.payload;

  if (StringUtil.isEmpty(searchMsg)) {
    ctx.state.subState.searchMSg = '';
    ctx.state.subState.items = [];
  } else {
    ctx.state.subState.searchMSg = searchMsg;
  }

  ctx.dispatch(SearchActionCreator.onRefresh());
  ctx.state.subState.controller.callRefresh();
}
