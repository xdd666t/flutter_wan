import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/app/utils/ui/view_util.dart';
import 'package:flutter_wan/bean/user/collect_list_bean.dart';
import 'package:flutter_wan/http/api.dart';
import 'package:flutter_wan/http/http.dart';
import 'package:flutter_wan/module/main/collect/action.dart';
import 'package:flutter_wan/module/main/collect/collect_item/state.dart';

import 'state.dart';

Effect<CollectState> buildEffect() {
  return combineEffects(<Object, Effect<CollectState>>{
    Lifecycle.initState: _init,
    //下拉刷新
    CollectAction.onListRefresh: _onListRefresh,
    //上拉加载
    CollectAction.onListLoad: _onListLoad,
  });
}

void _onListLoad(Action action, Context<CollectState> ctx) async {
  int index = ctx.state.index++;
  _loadData(index, ctx);
}

void _onListRefresh(Action action, Context<CollectState> ctx) async {
  ctx.state.index = 0;
  _loadData(ctx.state.index, ctx);
}

void _init(Action action, Context<CollectState> ctx) async {
  await ViewUtil.initFinish();
}

void _loadData(int index, Context<CollectState> ctx) async {
  var result = await Dio().get(
    '${ApiUrl.COLLECT_ARTICLE_LIST}$index/json',
    options: await getOptions(),
  );
  var bean = CollectListBean.fromJson(json.decode(result.toString()));

  print(result.toString());

  var list = List.generate(bean.data.datas.length, (index) {
    return CollectItemState(item: bean.data.datas[index]);
  });

  if (index == 0) {
    ctx.state.items = list;
  } else {
    ctx.state.items.addAll(list);
  }
  ctx.state.easyRefreshController.finishRefresh();
  ctx.state.easyRefreshController.finishLoad();

  //刷新数据源
  ctx.dispatch(CollectActionCreator.onRefresh());
}
