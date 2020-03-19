import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/project/project_bean.dart';
import 'package:flutter_wan/http/api.dart';
import 'action.dart';
import 'state.dart';

Effect<ProjectState> buildEffect() {
  return combineEffects(<Object, Effect<ProjectState>>{
    Lifecycle.initState: _init
  });
}

void _init(Action action, Context<ProjectState> ctx) async{
  Response response = await Dio().get(ApiUrl.GET_PROJECT_INFO);
  ProjectBean projectBean = ProjectBean().fromJson(json.decode(response.toString()));
  ctx.dispatch(ProjectActionCreator.updateProject(projectBean));
}
