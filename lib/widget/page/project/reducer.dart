import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Reducer<ProjectState> buildReducer() {
  return asReducer(
    <Object, Reducer<ProjectState>>{
      ProjectAction.onRefresh: _onRefresh,
    },
  );
}

ProjectState _onRefresh(ProjectState state, Action action) {
  return state.clone();
}
