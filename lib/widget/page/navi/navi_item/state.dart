import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/navi/navi_info_bean.dart';
import 'package:flutter_wan/widget/page/navi/navi_item/adapter.dart';
import 'package:flutter_wan/widget/page/navi/navi_item/navi_detail_item/state.dart';

class NaviItemState extends MutableSource implements Cloneable<NaviItemState> {
  NaviInfoData itemDetail;

  //该条列表中的列表
  List<NaviDetailItemState> items;

  NaviItemState({this.itemDetail});

  @override
  NaviItemState clone() {
    return NaviItemState()
        ..itemDetail = itemDetail
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
    return NaviItemAdapter.navi_detail_item;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => items == null ? 0 : items.length;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    items[index] = data;
  }
}

NaviItemState initState(Map<String, dynamic> args) {

  return NaviItemState();
}
