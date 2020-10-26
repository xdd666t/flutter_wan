import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TreeAction {
  //更新体系数据
  onRefresh,
}

class TreeActionCreator {
  static Action onRefresh() {
    return Action(TreeAction.onRefresh);
  }
}
