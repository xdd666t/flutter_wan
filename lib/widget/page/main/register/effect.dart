import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<RegisterState> buildEffect() {
  return combineEffects(<Object, Effect<RegisterState>>{
    RegisterAction.action: _onAction,
  });
}

void _onAction(Action action, Context<RegisterState> ctx) {
}
