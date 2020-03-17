import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NaviState> buildReducer() {
  return asReducer(
    <Object, Reducer<NaviState>>{
      NaviAction.updateItem: _updateItem,
    },
  );
}

NaviState _updateItem(NaviState state, Action action) {
  final NaviState newState = state.clone();
  newState.items = action.payload;
  return newState;
}
