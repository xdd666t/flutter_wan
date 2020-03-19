import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ProjectTabItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<ProjectTabItemState>>{
      ProjectTabItemAction.action: _onAction,
    },
  );
}

ProjectTabItemState _onAction(ProjectTabItemState state, Action action) {
  final ProjectTabItemState newState = state.clone();
  return newState;
}
