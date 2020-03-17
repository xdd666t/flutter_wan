import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/navi/navi_info_bean.dart';

class NaviDetailItemState implements Cloneable<NaviDetailItemState> {
  NaviInfoDataArticle itemDetail;

  NaviDetailItemState({this.itemDetail});

  @override
  NaviDetailItemState clone() {
    return NaviDetailItemState()
        ..itemDetail = itemDetail;
  }
}

NaviDetailItemState initState(Map<String, dynamic> args) {
  return NaviDetailItemState();
}
