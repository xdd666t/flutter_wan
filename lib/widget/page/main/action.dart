import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MainAction { action, initData,  selectTab}

class MainActionCreator {
  static Action onAction() {
    return Action(MainAction.action);
  }

  static Action initData(int index) {
    return Action(MainAction.initData);
  }

  static Action selectTab(int index) {
    return Action(
        MainAction.selectTab,
        payload: <String, dynamic>{"tabIndex": index}
    );
  }

}
