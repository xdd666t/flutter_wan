import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/project/project_bean.dart';

//TODO replace with your own action
enum ProjectAction { action, updateProject, //更新project数据
}

class ProjectActionCreator {
  static Action onAction() {
    return const Action(ProjectAction.action);
  }

  static Action updateProject(ProjectBean projectBean) {
    return Action(ProjectAction.updateProject, payload: projectBean);
  }

}
