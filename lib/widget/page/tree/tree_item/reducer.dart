import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TreeItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<TreeItemState>>{
      TreeItemAction.action: _onAction,
    },
  );
}

TreeItemState _onAction(TreeItemState state, Action action) {
  final TreeItemState newState = state.clone();
  return newState;
}
