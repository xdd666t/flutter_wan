import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TreeDetailTabAction { action,
  updateItem
}

class TreeDetailTabActionCreator {
  static Action updateItem(var items) {
    return Action(TreeDetailTabAction.updateItem, payload: items);
  }
}
