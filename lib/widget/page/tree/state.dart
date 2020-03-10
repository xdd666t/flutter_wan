import 'package:fish_redux/fish_redux.dart';

class TreeState implements Cloneable<TreeState> {

  @override
  TreeState clone() {
    return TreeState();
  }
}

TreeState initState(Map<String, dynamic> args) {
  return TreeState();
}
