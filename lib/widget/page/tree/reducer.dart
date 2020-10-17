import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TreeState> buildReducer() {
  return asReducer(
    <Object, Reducer<TreeState>>{
      TreeAction.onRefresh: _onRefresh,
    },
  );
}

TreeState _onRefresh(TreeState state, Action action) {
  return state.clone();
}
