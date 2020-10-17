import 'package:fish_redux/fish_redux.dart';

enum TreeItemAction {
  toTreeDetail,
}

class TreeItemActionCreator {
  static Action toTreeDetail() {
    return Action(TreeItemAction.toTreeDetail);
  }
}
