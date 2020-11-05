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
    //初始化
    Lifecycle.initState: _init,
    //点击键盘上的搜索从操作
    SearchAction.search: _search,
    //点击搜索热词
    SearchAction.searchHotWord: _searchHotWord,
    //点击搜索框中删除按钮
    SearchAction.onClear: _onClear,
  });
}

void _onClear(Action action, Context<SearchState> ctx) async {
  ctx.state.subState.searchMsg = '';
  ctx.state.subState.items = [];
  ctx.dispatch(SearchActionCreator.onRefresh());
}

void _searchHotWord(Action action, Context<SearchState> ctx) async {
  Data item = action.payload;
  //填充数据源
  ctx.state.controller.text = item.name;

  //请求列表
  ctx.state.subState.searchMsg = item.name;
  ctx.state.subState.controller.callRefresh();

  ctx.dispatch(SearchActionCreator.onRefresh());
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
