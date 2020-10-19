import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum RegisterAction { action }

class RegisterActionCreator {
  static Action onAction() {
    return const Action(RegisterAction.action);
  }
}
