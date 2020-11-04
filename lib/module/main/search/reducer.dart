import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SearchState> buildReducer() {
  return asReducer(
    <Object, Reducer<SearchState>>{
      SearchAction.onRefresh: _onRefresh,
    },
  );
}

SearchState _onRefresh(SearchState state, Action action) {
  return state.clone();
}
