import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MainAction {
  selectTab,
  onRefresh,
}

class MainActionCreator {
  static Action selectTab(int index) {
    return Action(MainAction.selectTab, payload: index);
  }

  static Action onRefresh() {
    return Action(MainAction.onRefresh);
  }
}
