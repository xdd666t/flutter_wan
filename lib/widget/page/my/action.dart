import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MyAction { action }

class MyActionCreator {
  static Action onAction() {
    return const Action(MyAction.action);
  }
}
