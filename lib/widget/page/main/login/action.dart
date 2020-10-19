import 'package:fish_redux/fish_redux.dart';

enum LoginAction {
  action,
  onLogin,
}

class LoginActionCreator {
  static Action onLogin() {
    return const Action(LoginAction.onLogin);
  }
}
