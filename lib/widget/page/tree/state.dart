import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/component/article_list/state.dart';
import 'package:flutter_wan/widget/page/tree/adapter.dart';
import 'package:flutter_wan/widget/page/tree/tree_item/state.dart';

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