import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TreeTabItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<TreeTabItemState>>{
      TreeTabItemAction.action: _onAction,
    },
  );
}

TreeTabItemState _onAction(TreeTabItemState state, Action action) {
  final TreeTabItemState newState = state.clone();
  return newState;
}
