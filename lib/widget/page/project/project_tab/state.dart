import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/project/project_tab/adapter.dart';
import 'package:flutter_wan/widget/page/project/project_tab_item/state.dart';

class ProjectTabState extends MutableSource
    implements Cloneable<ProjectTabState> {
  //请求id
  int id;

  //items
  List<ProjectTabItemState> items;

  @override
  ProjectTabState clone() {
    return ProjectTabState()
      ..id = id
      ..items = items;
  }

  @override
  Object getItemData(int index) => items[index];

  @override
  String getItemType(int index) => ProjectTabAdapter.project_tab_item;

  @override
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) => items[index] = data;
}

ProjectTabState initState(Map<String, dynamic> args) {
  int id = args["id"];
  return ProjectTabState()
    ..items = []
    ..id = id;
}
