import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/bean/project/project_bean.dart';
import 'package:flutter_wan/http/api.dart';
import 'package:flutter_wan/http/http.dart';

import 'action.dart';
import 'state.dart';

Effect<ProjectState> buildEffect() {
  return combineEffects(<Object, Effect<ProjectState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<ProjectState> ctx) async {
  Response response = await Dio().get(
    ApiUrl.GET_PROJECT_INFO,
    options: await getOptions(),
  );
  ProjectBean projectBean =
      ProjectBean.fromJson(json.decode(response.toString()));
  var list = projectBean.data;
  //处理tab
  List<Tab> tabs = [];
  for (var i = 0; i < list.length; i++) {
    tabs.add(Tab(text: list[i].name));
  }

  //更新页面
  ctx.state.tabList = tabs;
  ctx.state.projectBean = projectBean;
  ctx.dispatch(ProjectActionCreator.onRefresh());
}
