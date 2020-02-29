import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FindAction { action }

class FindActionCreator {
  static Action onAction() {
    return const Action(FindAction.action);
  }
}
