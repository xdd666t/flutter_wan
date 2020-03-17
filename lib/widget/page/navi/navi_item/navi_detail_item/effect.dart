import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<NaviDetailItemState> buildEffect() {
  return combineEffects(<Object, Effect<NaviDetailItemState>>{
    NaviDetailItemAction.action: _onAction,
  });
}

void _onAction(Action action, Context<NaviDetailItemState> ctx) {
}
