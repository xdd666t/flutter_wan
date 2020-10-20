import 'package:fish_redux/fish_redux.dart';

class LoginState implements Cloneable<LoginState> {
  ///用户名
  String userName;

  ///密码
  String password;

  @override
  LoginState clone() {
    return LoginState()
      ..userName = userName
      ..password = password;
  }
}

LoginState initState(Map<String, dynamic> args) {
  return LoginState();
}
