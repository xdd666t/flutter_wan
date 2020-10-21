import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/tree/tree_info_bean.dart';

class TreeItemState implements Cloneable<TreeItemState> {
  Data item;

  TreeItemState({this.item});

  @override
  TreeItemState clone() {
    return TreeItemState()
        ..item = item;
  }
}

TreeItemState initState(Map<String, dynamic> args) {
  return TreeItemState();
}
