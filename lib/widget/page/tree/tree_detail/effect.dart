import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<TreeDetailState> buildEffect() {
  return combineEffects(<Object, Effect<TreeDetailState>>{
    TreeDetailAction.action: _onAction,
  });
}

void _onAction(Action action, Context<TreeDetailState> ctx) {

}
