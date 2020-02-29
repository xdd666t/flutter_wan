import 'package:fish_redux/fish_redux.dart';

class MyState implements Cloneable<MyState> {

  @override
  MyState clone() {
    return MyState();
  }
}

MyState initState(Map<String, dynamic> args) {
  return MyState();
}
