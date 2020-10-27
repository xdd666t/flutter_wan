import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_wan/module/main/collect/adapter.dart';

class CollectState extends MutableSource implements Cloneable<CollectState> {
  ///列表数据源
  int index;

  ///数据源
  List<Object> items;

  ///刷新控制器
  EasyRefreshController easyRefreshController;

  @override
  CollectState clone() {
    return CollectState()
      ..index = index
      ..items = items
      ..easyRefreshController = easyRefreshController;
  }

  @override
  Object getItemData(int index) => items[index];

  @override
  String getItemType(int index) => CollectAdapter.collect_item;

  @override
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) => items[index] = data;
}

CollectState initState(Map<String, dynamic> args) {
  return CollectState()
    ..index = 0
    ..items = []
    ..easyRefreshController = EasyRefreshController();
}
