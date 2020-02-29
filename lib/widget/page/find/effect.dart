import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/find/state.dart';
import 'action.dart';


Effect<FindState> buildEffect() {
  return combineEffects(<Object, Effect<FindState>>{
    FindAction.action: _onAction,
  });
}

void _onAction(Action action, Context<FindState> ctx) {
}
