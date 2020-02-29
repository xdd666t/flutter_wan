import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.updateBannerData: _onBanner,
    },
  );
}



HomeState _onBanner(HomeState state, Action action) {
  return state.clone()
      ..banners = action.payload;
}