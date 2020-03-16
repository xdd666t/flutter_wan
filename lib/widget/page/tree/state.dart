import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/tree/tree_info_bean.dart';
import 'package:flutter_wan/widget/page/tree/adapter.dart';
import 'package:flutter_wan/widget/page/tree/tree_item/state.dart';

class TreeState extends MutableSource implements Cloneable<TreeState> {
  //item数据源
  List<TreeItemState> itemList;

  @override
  TreeState clone() {
    return TreeState()
        ..itemList = itemList;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return itemList[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return TreeAdapter.treeItem;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => itemList.length;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    itemList[index] = data;
  }
}

TreeState initState(Map<String, dynamic> args) {
  return TreeState()
    ..itemList = List();
}
