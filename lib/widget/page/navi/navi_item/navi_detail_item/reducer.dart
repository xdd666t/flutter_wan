import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NaviDetailItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<NaviDetailItemState>>{
      NaviDetailItemAction.action: _onAction,
    },
  );
}

NaviDetailItemState _onAction(NaviDetailItemState state, Action action) {
  final NaviDetailItemState newState = state.clone();
  return newState;
}
