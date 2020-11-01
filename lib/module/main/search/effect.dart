import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<SearchState> buildEffect() {
  return combineEffects(<Object, Effect<SearchState>>{
    SearchAction.action: _onAction,
  });
}

void _onAction(Action action, Context<SearchState> ctx) {
}
