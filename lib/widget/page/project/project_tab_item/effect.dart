import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ProjectTabItemState> buildEffect() {
  return combineEffects(<Object, Effect<ProjectTabItemState>>{
    ProjectTabItemAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ProjectTabItemState> ctx) {
}
