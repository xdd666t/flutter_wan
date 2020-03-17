import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/navi/navi_item/component.dart';
import 'package:flutter_wan/widget/page/navi/state.dart';

class NaviAdapter extends SourceFlowAdapter<NaviState> {
  static String navi_item = "navi_item";

  NaviAdapter()
      : super(
          pool: <String, Component<Object>>{
            navi_item: NaviItemComponent()
          },
          );
}


