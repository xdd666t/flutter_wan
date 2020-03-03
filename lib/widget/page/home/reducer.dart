import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.updateBannerData: _onBannerData,
      HomeAction.updateBannerImage: _onBannerImage,
      HomeAction.updateIndex: _onBannerIndex,
      HomeAction.updateArticleItem: _onArticleItem,
    },
  );
}


HomeState _onBannerData(HomeState state, Action action) {
  return state.clone()
    ..banners = action.payload;
}

HomeState _onBannerImage(HomeState state, Action action) {
  return state.clone()
    ..bannerImages = action.payload;
}

HomeState _onBannerIndex(HomeState state, Action action) {
  return state.clone()
    ..bannerIndex = action.payload;
}

HomeState _onArticleItem(HomeState state, Action action) {
  return state.clone()
    ..articleList = action.payload;
}