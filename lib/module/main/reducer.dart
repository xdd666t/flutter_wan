import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MainState> buildReducer() {
  return asReducer(
    <Object, Reducer<MainState>>{
      MainAction.onRefresh: _onRefresh,
    },
  );
}

MainState _onRefresh(MainState state, Action action) {
  return state.clone();
}
