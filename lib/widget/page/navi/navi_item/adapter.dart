import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/navi/navi_item/navi_detail_item/component.dart';
import 'package:flutter_wan/widget/page/navi/navi_item/state.dart';

class NaviItemAdapter extends SourceFlowAdapter<NaviItemState> {
  static String navi_detail_item = "navi_detail_item";

  NaviItemAdapter()
      : super(
          pool: <String, Component<Object>>{
            navi_detail_item: NaviDetailItemComponent()
          },
          );
}

