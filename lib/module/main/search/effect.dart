import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/app/utils/tool/string_util.dart';
import 'package:flutter_wan/app/utils/ui/view_util.dart';
import 'package:flutter_wan/bean/user/hot_word_bean.dart';
import 'package:flutter_wan/http/api.dart';

import 'action.dart';
import 'state.dart';

Effect<SearchState> buildEffect() {
  return combineEffects(<Object, Effect<SearchState>>{
    Lifecycle.initState: _init,
    SearchAction.search: _search,
  });
}

void _init(Action action, Context<SearchState> ctx) async {
  await ViewUtil.initFinish();

  //获取搜索热词
  var result = await Dio().get(ApiUrl.SEARCH_HOT_WORD);

  var bean = HotWordBean.fromJson(json.decode(result.toString()));
  ctx.state.hotList = bean.data;

  ctx.dispatch(SearchActionCreator.onRefresh());
}

void _search(Action action, Context<SearchState> ctx) {
  //搜索
  String searchMsg = action.payload;

  if (StringUtil.isEmpty(searchMsg)) {
    ctx.state.subState.searchMsg = '';
    ctx.state.subState.items = [];
  } else {
    ctx.state.subState.searchMsg = searchMsg;
    //通知刷新数据
    ctx.state.subState.controller.callRefresh();
  }

  ctx.dispatch(SearchActionCreator.onRefresh());
}
