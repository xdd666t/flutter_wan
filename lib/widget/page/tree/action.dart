import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/tree/tree_item/state.dart';

//TODO replace with your own action
enum TreeAction { action,
  updateTree, //更新体系数据
}

class TreeActionCreator {
  static Action onAction() {
    return const Action(TreeAction.action);
  }

  //更新体系数据
  static Action updateTree(var list) {
    return Action(TreeAction.updateTree, payload: list);
  }

}
