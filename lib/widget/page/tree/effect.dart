import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/tree/tree_info_bean.dart';
import 'package:flutter_wan/http/api.dart';
import 'package:flutter_wan/http/http.dart';
import 'package:flutter_wan/widget/page/tree/tree_item/state.dart';

import 'action.dart';
import 'state.dart';

Effect<TreeState> buildEffect() {
  return combineEffects(<Object, Effect<TreeState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<TreeState> ctx) async {
  Response response = await Dio().get(
    ApiUrl.GET_TREE,
    options: await getOptions(),
  );
  TreeInfoBean treeInfoBean =
      TreeInfoBean.fromJson(json.decode(response.toString()));
  List<Data> treeItem = treeInfoBean.data;
  List<TreeItemState> itemList = List.generate(treeItem.length, (index) {
    return TreeItemState(item: treeItem[index]);
  });

  //更新数据
  ctx.state.itemList = itemList;
  ctx.dispatch(TreeActionCreator.onRefresh());
}
