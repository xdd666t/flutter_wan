import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'tree_item/component.dart';

class TreeAdapter extends SourceFlowAdapter<TreeState> {
  static String treeItem = "treeItem"; //体系item

  TreeAdapter()
      : super(pool: <String, Component<Object>>{
          treeItem: TreeItemComponent(),
        });
}
