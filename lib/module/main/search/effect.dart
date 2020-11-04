import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<SearchState> buildEffect() {
  return combineEffects(<Object, Effect<SearchState>>{
    SearchAction.search: _search,
  });
}

void _search(Action action, Context<SearchState> ctx) {
  //搜索
}
