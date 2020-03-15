import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'package:flutter_wan/bean/tree/tree_info_bean.dart';
import 'action.dart';
import 'state.dart';

Effect<TreeItemState> buildEffect() {
  return combineEffects(<Object, Effect<TreeItemState>>{
    TreeItemAction.action: _onAction,
    TreeItemAction.toTreeDetail: _toTreeDetail,
  });
}

void _onAction(Action action, Context<TreeItemState> ctx) {
}

void _toTreeDetail(Action action, Context<TreeItemState> ctx) {
  println(ctx.state.item);

  Navigator.of(ctx.context).pushNamed("tree_detail", arguments: {"treeDetail": action.payload});
}
