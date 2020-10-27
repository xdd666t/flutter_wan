import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CollectState> buildReducer() {
  return asReducer(
    <Object, Reducer<CollectState>>{
      CollectAction.onRefresh: _onRefresh,
    },
  );
}

CollectState _onRefresh(CollectState state, Action action) {
  return state.clone();
}
