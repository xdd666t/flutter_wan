import 'package:fish_redux/fish_redux.dart';

class TreeTabItemState implements Cloneable<TreeTabItemState> {

  @override
  TreeTabItemState clone() {
    return TreeTabItemState();
  }
}

TreeTabItemState initState(Map<String, dynamic> args) {
  return TreeTabItemState();
}
