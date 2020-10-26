import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.onRefresh: _onRefresh,
    },
  );
}

HomeState _onRefresh(HomeState state, Action action) {
  return state.clone();
}

HomeState _onBannerIndex(HomeState state, Action action) {
  return state.clone()
    ..bannerIndex = action.payload;
}