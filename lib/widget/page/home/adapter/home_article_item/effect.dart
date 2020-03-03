import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeArticleItemState> buildEffect() {
  return combineEffects(<Object, Effect<HomeArticleItemState>>{
    HomeArticleItemAction.action: _onAction,
  });
}

void _onAction(Action action, Context<HomeArticleItemState> ctx) {
}
