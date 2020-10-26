import 'package:fish_redux/fish_redux.dart';

import 'adapter.dart';
import 'tree_item/state.dart';

class TreeState extends MutableSource implements Cloneable<TreeState> {
  //item数据源
  List<TreeItemState> itemList;

  @override
  TreeState clone() {
    return TreeState()..itemList = itemList;
  }

  @override
  Object getItemData(int index) => itemList[index];

  @override
  String getItemType(int index) => TreeAdapter.treeItem;

  @override
  int get itemCount => itemList.length;

  @override
  void setItemData(int index, Object data) => itemList[index] = data;
}

TreeState initState(Map<String, dynamic> args) {
  return TreeState()..itemList = [];
}
