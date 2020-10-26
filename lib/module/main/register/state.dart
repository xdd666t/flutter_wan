import 'package:fish_redux/fish_redux.dart';

class RegisterState implements Cloneable<RegisterState> {
  String userName;
  String password;
  String rePassword;

  @override
  RegisterState clone() {
    return RegisterState()
      ..userName = userName
      ..password = password
      ..rePassword = rePassword;
  }
}

RegisterState initState(Map<String, dynamic> args) {
  return RegisterState();
}
