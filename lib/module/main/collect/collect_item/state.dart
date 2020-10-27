import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/user/collect_list_bean.dart';

class CollectItemState implements Cloneable<CollectItemState> {
  CollectItemState({this.item});

  Datas item;

  @override
  CollectItemState clone() {
    return CollectItemState()..item = item;
  }
}
