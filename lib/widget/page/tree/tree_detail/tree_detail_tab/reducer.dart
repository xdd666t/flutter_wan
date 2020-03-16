import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TreeDetailTabState> buildReducer() {
  return asReducer(
    <Object, Reducer<TreeDetailTabState>>{
      TreeDetailTabAction.action: _onAction,
      TreeDetailTabAction.updateItem: _updateItem,
    },
  );
}

TreeDetailTabState _onAction(TreeDetailTabState state, Action action) {
  final TreeDetailTabState newState = state.clone();
  return newState;
}

TreeDetailTabState _updateItem(TreeDetailTabState state, Action action) {
  final TreeDetailTabState newState = state.clone();
  newState.items = action.payload;
  return newState;
}