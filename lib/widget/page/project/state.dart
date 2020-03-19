import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/bean/project/project_bean.dart';

class ProjectState implements Cloneable<ProjectState> {
  ProjectBean projectBean;

  //tab
  List<Tab> tabList;

  @override
  ProjectState clone() {
    return ProjectState()
        ..projectBean = projectBean
        ..tabList = tabList;
  }
}

ProjectState initState(Map<String, dynamic> args) {
  return ProjectState();
}
