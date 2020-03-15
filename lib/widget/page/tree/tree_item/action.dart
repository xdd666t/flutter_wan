import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/tree/tree_info_bean.dart';

//TODO replace with your own action
enum TreeItemAction { action,
  toTreeDetail,
}

class TreeItemActionCreator {
  static Action onAction() {
    return const Action(TreeItemAction.action);
  }

  static Action toTreeDetail(TreeInfoData treeInfoData) {
    return Action(TreeItemAction.toTreeDetail, payload: treeInfoData);
  }
}
