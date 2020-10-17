import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/bean/project/project_bean.dart';

class ProjectState implements Cloneable<ProjectState> {
  //数据源
  ProjectBean projectBean;

  //tab
  List<Tab> tabList;

  //自定义TabBar控制器
  TabController tabController;

  @override
  ProjectState clone() {
    return ProjectState()
      ..projectBean = projectBean
      ..tabController = tabController
      ..tabList = tabList;
  }
}

ProjectState initState(Map<String, dynamic> args) {
  return ProjectState()..tabList = [];
}
