import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TreeTabItemAction { action }

class TreeTabItemActionCreator {
  static Action onAction() {
    return const Action(TreeTabItemAction.action);
  }
}
