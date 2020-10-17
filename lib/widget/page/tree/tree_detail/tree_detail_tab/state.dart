import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/tree/tree_detail/tree_detail_tab/adapter.dart';
import 'package:flutter_wan/widget/page/tree/tree_detail/tree_tab_item/state.dart';

class TreeDetailTabState extends MutableSource
    implements Cloneable<TreeDetailTabState> {
  String id;
  List<TreeTabItemState> items;

  @override
  TreeDetailTabState clone() => TreeDetailTabState()..items = items;

  @override
  Object getItemData(int index) => items[index];

  @override
  String getItemType(int index) => TreeDetailTabAdapter.item_tree_tab;

  @override
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) => items[index] = data;
}

TreeDetailTabState initState(Map<String, dynamic> args) {
  var id = args["id"]; //获取TabBar穿过来的id
  return TreeDetailTabState()
    ..id = id
    ..items = [];
}
