import 'package:fish_redux/fish_redux.dart';

class CollectState implements Cloneable<CollectState> {

  @override
  CollectState clone() {
    return CollectState();
  }
}

CollectState initState(Map<String, dynamic> args) {
  return CollectState();
}
