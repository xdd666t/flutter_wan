import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<TreeState> buildEffect() {
  return combineEffects(<Object, Effect<TreeState>>{
    TreeAction.action: _onAction,
  });
}

void _onAction(Action action, Context<TreeState> ctx) {
}
