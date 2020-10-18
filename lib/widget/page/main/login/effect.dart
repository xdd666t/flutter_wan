import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.action: _onAction,
  });
}

void _onAction(Action action, Context<LoginState> ctx) {
}
