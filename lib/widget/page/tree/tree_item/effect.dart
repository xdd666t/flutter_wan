import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';

import 'action.dart';
import 'state.dart';

Effect<TreeItemState> buildEffect() {
  return combineEffects(<Object, Effect<TreeItemState>>{
    TreeItemAction.toTreeDetail: _toTreeDetail,
  });
}

void _toTreeDetail(Action action, Context<TreeItemState> ctx) {
  Navigator.pushNamed(
    ctx.context,
    RouteConfig.treeDetailPage,
    arguments: {"treeDetail": ctx.state.item},
  );
}
