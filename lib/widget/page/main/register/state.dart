import 'package:fish_redux/fish_redux.dart';

class RegisterState implements Cloneable<RegisterState> {

  @override
  RegisterState clone() {
    return RegisterState();
  }
}

RegisterState initState(Map<String, dynamic> args) {
  return RegisterState();
}
