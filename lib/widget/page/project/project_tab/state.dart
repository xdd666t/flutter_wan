import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/project/project_tab/adapter.dart';
import 'package:flutter_wan/widget/page/project/project_tab_item/state.dart';

class ProjectTabState extends MutableSource implements Cloneable<ProjectTabState> {
  int id;

  //items
  List<ProjectTabItemState> items;

  @override
  ProjectTabState clone() {
    return ProjectTabState()
        ..id = id;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return items[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return ProjectTabAdapter.project_tab_item;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    items[index] = data;
  }
}

ProjectTabState initState(Map<String, dynamic> args) {
  int id = args["id"];
  return ProjectTabState()
      ..id = id;
}
