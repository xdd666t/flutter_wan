import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<TreeTabItemState> buildEffect() {
  return combineEffects(<Object, Effect<TreeTabItemState>>{
    TreeTabItemAction.action: _onAction,
  });
}

void _onAction(Action action, Context<TreeTabItemState> ctx) {
}
