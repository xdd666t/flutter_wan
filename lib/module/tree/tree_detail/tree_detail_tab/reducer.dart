import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TreeDetailTabState> buildReducer() {
  return asReducer(
    <Object, Reducer<TreeDetailTabState>>{
      TreeDetailTabAction.onRefresh: _onRefresh,
    },
  );
}

TreeDetailTabState _onRefresh(TreeDetailTabState state, Action action) {
  return state.clone();
}
