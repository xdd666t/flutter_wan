import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Reducer<ProjectState> buildReducer() {
  return asReducer(
    <Object, Reducer<ProjectState>>{
      ProjectAction.updateProject: _updateProject,
    },
  );
}

ProjectState _updateProject(ProjectState state, Action action) {
  final ProjectState newState = state.clone();
  newState.projectBean = action.payload;
  var list = newState.projectBean.data;
  //处理tab
  List<Tab> tabs = List();
  for(var i=0; i<list.length; i++){
    tabs.add(Tab(text: list[i].name));
  }
  newState.tabList = tabs;

  return newState;
}
