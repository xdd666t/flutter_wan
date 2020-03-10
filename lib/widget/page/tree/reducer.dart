import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TreeState> buildReducer() {
  return asReducer(
    <Object, Reducer<TreeState>>{
      TreeAction.action: _onAction,
    },
  );
}

TreeState _onAction(TreeState state, Action action) {
  final TreeState newState = state.clone();
  return newState;
}
