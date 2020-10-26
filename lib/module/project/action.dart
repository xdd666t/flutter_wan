import 'package:fish_redux/fish_redux.dart';

enum ProjectAction {
  //更新project数据
  onRefresh,
}

class ProjectActionCreator {
  static Action onRefresh() {
    return Action(ProjectAction.onRefresh);
  }
}
