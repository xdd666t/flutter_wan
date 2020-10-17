import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/project/project_bean.dart';

enum ProjectAction {
  //更新project数据
  onRefresh,
}

class ProjectActionCreator {
  static Action onRefresh() {
    return Action(ProjectAction.onRefresh);
  }
}
