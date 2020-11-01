import 'package:fish_redux/fish_redux.dart';

enum CollectItemAction {
  //跳转详情
  toDetail,
}

class CollectItemActionCreator {
  static Action toDetail() {
    return const Action(CollectItemAction.toDetail);
  }
}
