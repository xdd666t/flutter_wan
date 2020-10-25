import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CollectState> buildReducer() {
  return asReducer(
    <Object, Reducer<CollectState>>{
      CollectAction.action: _onAction,
    },
  );
}

CollectState _onAction(CollectState state, Action action) {
  final CollectState newState = state.clone();
  return newState;
}
