import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ProjectTabState> buildReducer() {
  return asReducer(
    <Object, Reducer<ProjectTabState>>{
      ProjectTabAction.onRefresh: _onRefresh,
    },
  );
}

ProjectTabState _onRefresh(ProjectTabState state, Action action) {
  return state.clone();
}
