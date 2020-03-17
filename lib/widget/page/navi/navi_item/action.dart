import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NaviItemAction { action,
  updateNaviDetailItem,
}

class NaviItemActionCreator {
  static Action updateNaviDetailItem(var items) {
    return Action(NaviItemAction.updateNaviDetailItem, payload: items);
  }
}
