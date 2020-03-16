import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TreeDetailTabAction { action }

class TreeDetailTabActionCreator {
  static Action onAction() {
    return const Action(TreeDetailTabAction.action);
  }
}
