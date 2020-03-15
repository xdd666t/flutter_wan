import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/tree/tree_detail/tree_detail_tab/adapter.dart';
import 'package:flutter_wan/widget/page/tree/tree_detail/tree_detail_tab/tree_tab_item/state.dart';

class TreeDetailTabState extends MutableSource implements Cloneable<TreeDetailTabState> {
  List<TreeTabItemState> items;

  @override
  TreeDetailTabState clone() {
    return TreeDetailTabState();
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return items[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return TreeDetailTabAdapter.item_tree_tab;
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

TreeDetailTabState initState(Map<String, dynamic> args) {
  List<TreeTabItemState> list = List();
  for(int i=0; i<10; i++){
    list.add(TreeTabItemState());
  }

  return TreeDetailTabState()
      ..items = list;
}
