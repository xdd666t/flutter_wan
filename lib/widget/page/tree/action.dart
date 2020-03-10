import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TreeAction { action }

class TreeActionCreator {
  static Action onAction() {
    return const Action(TreeAction.action);
  }
}
