import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TreeDetailAction { action }

class TreeDetailActionCreator {
  static Action onAction() {
    return const Action(TreeDetailAction.action);
  }
}
