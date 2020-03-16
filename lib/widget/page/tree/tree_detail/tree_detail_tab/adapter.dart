import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/tree/tree_detail/tree_detail_tab/state.dart';
import 'package:flutter_wan/widget/page/tree/tree_detail/tree_tab_item/component.dart';

class TreeDetailTabAdapter extends SourceFlowAdapter<TreeDetailTabState> {
  static String item_tree_tab = "item_tree_tab";

  TreeDetailTabAdapter()
      : super(
          pool: <String, Component<Object>>{
            item_tree_tab: TreeTabItemComponent()
          },
          );
}