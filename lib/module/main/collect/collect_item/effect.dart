import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<CollectItemState> buildEffect() {
  return combineEffects(<Object, Effect<CollectItemState>>{
    CollectItemAction.action: _onAction,
  });
}

void _onAction(Action action, Context<CollectItemState> ctx) {
}
