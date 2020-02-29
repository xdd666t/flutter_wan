import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MyState> buildReducer() {
  return asReducer(
    <Object, Reducer<MyState>>{
      MyAction.action: _onAction,
    },
  );
}

MyState _onAction(MyState state, Action action) {
  final MyState newState = state.clone();
  return newState;
}
