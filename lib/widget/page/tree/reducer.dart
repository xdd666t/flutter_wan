import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TreeState> buildReducer() {
  return asReducer(
    <Object, Reducer<TreeState>>{
      TreeAction.action: _onAction,
      TreeAction.updateTree: _updateTree,
    },
  );
}

TreeState _onAction(TreeState state, Action action) {
  final TreeState newState = state.clone();
  return newState;
}

TreeState _updateTree(TreeState state, Action action) {
  TreeState newState = state.clone();
  newState.itemList = action.payload;
  return newState;
}
