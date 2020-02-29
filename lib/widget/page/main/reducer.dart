import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MainState> buildReducer() {
  return asReducer(
    <Object, Reducer<MainState>>{
      MainAction.action: _onAction,
      MainAction.selectTab: _selectTab,
    },
  );
}

MainState _onAction(MainState state, Action action) {
  final MainState newState = state.clone();
  return newState;
}

MainState _selectTab(MainState state, Action action) {
  MainState newState = state.clone();
  Map<String, dynamic> tab = action.payload;
  newState.selectedIndex = tab["tabIndex"];
  return newState;
}