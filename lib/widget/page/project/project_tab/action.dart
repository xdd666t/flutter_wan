import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ProjectTabAction {
  //刷新数据
  onRefresh,
}

class ProjectTabActionCreator {
  static Action onRefresh() {
    return Action(ProjectTabAction.onRefresh);
  }
}
