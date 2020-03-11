import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<TreeState> buildEffect() {
  return combineEffects(<Object, Effect<TreeState>>{
    TreeAction.action: _onAction,
    Lifecycle.initState: _init,
  });
}

void _onAction(Action action, Context<TreeState> ctx) {
}

void _init(Action action, Context<TreeState> ctx) {
  println('object.......');

}
