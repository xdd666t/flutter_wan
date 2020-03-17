import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NaviDetailItemAction { action }

class NaviDetailItemActionCreator {
  static Action onAction() {
    return const Action(NaviDetailItemAction.action);
  }
}
