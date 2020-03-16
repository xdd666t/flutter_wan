import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/tree/state.dart';
import 'package:flutter_wan/widget/page/tree/tree_item/component.dart';

class TreeAdapter extends SourceFlowAdapter<TreeState> {
  static String treeItem = "treeItem"; //体系item

  TreeAdapter()
      : super(
          pool: <String, Component<Object>>{
            treeItem : TreeItemComponent(),
          }
  );
}

