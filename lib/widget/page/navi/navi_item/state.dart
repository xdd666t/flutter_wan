import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/navi/navi_info_bean.dart';

class NaviItemState implements Cloneable<NaviItemState> {
  NaviInfoData itemDetail;

  NaviItemState({this.itemDetail});

  @override
  NaviItemState clone() {
    return NaviItemState()..itemDetail = itemDetail;
  }
}
