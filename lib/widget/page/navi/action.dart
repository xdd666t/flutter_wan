import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NaviAction { action,
  updateItem
}

class NaviActionCreator {

  static Action updateItem(var list) {
    return Action(NaviAction.updateItem, payload: list);
  }

}
