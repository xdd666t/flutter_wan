import 'package:fish_redux/fish_redux.dart';

enum LoginAction {
  //注册
  onRegister,
  //登录
  onLogin,
}

class LoginActionCreator {
  static Action onLogin() {
    return const Action(LoginAction.onLogin);
  }

  static Action onRegister() {
    return const Action(LoginAction.onRegister);
  }
}
