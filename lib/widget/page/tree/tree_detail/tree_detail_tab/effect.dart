import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<TreeDetailTabState> buildEffect() {
  return combineEffects(<Object, Effect<TreeDetailTabState>>{
    TreeDetailTabAction.action: _onAction,
  });
}

void _onAction(Action action, Context<TreeDetailTabState> ctx) {
}
