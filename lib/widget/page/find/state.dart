import 'package:fish_redux/fish_redux.dart';

class FindState implements Cloneable<FindState> {

  @override
  FindState clone() {
    return FindState();
  }
}

FindState initState(Map<String, dynamic> args) {
  return FindState();
}
