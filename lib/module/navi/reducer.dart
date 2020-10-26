import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NaviState> buildReducer() {
  return asReducer(
    <Object, Reducer<NaviState>>{
      NaviAction.onRefresh: _onRefresh,
    },
  );
}

NaviState _onRefresh(NaviState state, Action action) {
  return state.clone();
}
