import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TreeDetailTabState> buildReducer() {
  return asReducer(
    <Object, Reducer<TreeDetailTabState>>{
      TreeDetailTabAction.action: _onAction,
    },
  );
}

TreeDetailTabState _onAction(TreeDetailTabState state, Action action) {
  final TreeDetailTabState newState = state.clone();
  return newState;
}
