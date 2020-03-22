import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/project/project_detail_bean.dart';
import 'package:flutter_wan/http/api.dart';
import 'package:flutter_wan/widget/page/project/project_tab_item/state.dart';
import 'action.dart';
import 'state.dart';

Effect<ProjectTabState> buildEffect() {
  return combineEffects(<Object, Effect<ProjectTabState>>{
    ProjectTabAction.action: _onAction,
    Lifecycle.initState: _init,
  });
}

void _onAction(Action action, Context<ProjectTabState> ctx) {
}

void _init(Action action, Context<ProjectTabState> ctx) async {
  Response response = await Dio().get(ApiUrl.GET_PROJECT_DETAIL, queryParameters: {"cid": ctx.state.id});
  ProjectDetailBean projectDetailBean = ProjectDetailBean().fromJson(json.decode(response.toString()));
  List<ProjectTabItemState> items = List.generate(projectDetailBean.data.datas.length, (index){
    return ProjectTabItemState(itemDetail: projectDetailBean.data.datas[index]);
  });

  ctx.dispatch(ProjectTabActionCreator.updateItem(items));

}
