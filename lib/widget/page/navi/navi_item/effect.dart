import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/navi/navi_item/navi_detail_item/action.dart';
import 'package:flutter_wan/widget/page/navi/navi_item/navi_detail_item/state.dart';
import 'action.dart';
import 'state.dart';

Effect<NaviItemState> buildEffect() {
  return combineEffects(<Object, Effect<NaviItemState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<NaviItemState> ctx) {
  List<NaviDetailItemState> items = List.generate(ctx.state.itemDetail.articles.length, (index){
    return NaviDetailItemState(itemDetail: ctx.state.itemDetail.articles[index]);
  });
  ctx.dispatch(NaviItemActionCreator.updateNaviDetailItem(items));
}
