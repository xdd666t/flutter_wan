import 'package:fish_redux/fish_redux.dart';

enum TreeDetailTabAction {
  //刷新
  onRefresh,
}

class TreeDetailTabActionCreator {
  static Action onRefresh() {
    return Action(TreeDetailTabAction.onRefresh);
  }
}
