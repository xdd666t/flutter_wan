import 'package:fish_redux/fish_redux.dart';

import 'navi_item/component.dart';
import 'state.dart';

class NaviAdapter extends SourceFlowAdapter<NaviState> {
  static String navi_item = "navi_item";

  NaviAdapter()
      : super(
          pool: <String, Component<Object>>{navi_item: NaviItemComponent()},
        );
}
