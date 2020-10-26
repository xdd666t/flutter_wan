import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/app/utils/ui/view_util.dart';

import 'action.dart';
import 'state.dart';

Effect<CollectState> buildEffect() {
  return combineEffects(<Object, Effect<CollectState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<CollectState> ctx) async{
  await ViewUtil.initFinish();

  loadData(ctx);
}


void loadData( Context<CollectState> ctx) async{

}
