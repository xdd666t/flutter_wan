import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ProjectTabState> buildReducer() {
  return asReducer(
    <Object, Reducer<ProjectTabState>>{
      ProjectTabAction.updateItem: _updateItem,
    },
  );
}

ProjectTabState _updateItem(ProjectTabState state, Action action) {
  final ProjectTabState newState = state.clone();
  newState.items = action.payload;
  return newState;
}
