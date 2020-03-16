import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TreeDetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<TreeDetailState>>{
      TreeDetailAction.action: _onAction,
    },
  );
}

TreeDetailState _onAction(TreeDetailState state, Action action) {
  final TreeDetailState newState = state.clone();
  return newState;
}
