import 'package:fish_redux/fish_redux.dart';

enum NaviAction {
  onRefresh
}

class NaviActionCreator {

  static Action onRefresh() {
    return Action(NaviAction.onRefresh);
  }

}
