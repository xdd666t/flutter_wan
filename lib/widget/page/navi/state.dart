import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/navi/action.dart';
import 'package:flutter_wan/widget/page/navi/adapter.dart';
import 'package:flutter_wan/widget/page/navi/navi_item/state.dart';

class NaviState extends MutableSource implements Cloneable<NaviState> {
  List<NaviItemState> items;


  @override
  NaviState clone() {
    return NaviState()
        ..items = items;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return items[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return NaviAdapter.navi_item;
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

NaviState initState(Map<String, dynamic> args) {
  return NaviState();
}
