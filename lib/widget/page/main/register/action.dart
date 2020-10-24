import 'package:fish_redux/fish_redux.dart';

enum RegisterAction {
  //注册
  onRegister,
}

class RegisterActionCreator {
  static Action onRegister() {
    return const Action(RegisterAction.onRegister);
  }
}
