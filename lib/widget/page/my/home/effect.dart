import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MyState> buildEffect() {
  return combineEffects(<Object, Effect<MyState>>{
    MyAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MyState> ctx) {
}
