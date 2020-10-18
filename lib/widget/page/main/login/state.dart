import 'package:fish_redux/fish_redux.dart';

class LoginState implements Cloneable<LoginState> {

  @override
  LoginState clone() {
    return LoginState();
  }
}

LoginState initState(Map<String, dynamic> args) {
  return LoginState();
}
