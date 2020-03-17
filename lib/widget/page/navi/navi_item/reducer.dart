import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NaviItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<NaviItemState>>{
      NaviItemAction.updateNaviDetailItem: _updateNaviDetailItem,
    },
  );
}

NaviItemState _updateNaviDetailItem(NaviItemState state, Action action) {
  final NaviItemState newState = state.clone();
  newState.items = action.payload;
  return newState;
}
