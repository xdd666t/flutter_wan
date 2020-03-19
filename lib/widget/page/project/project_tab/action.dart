import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ProjectTabAction { action,
  updateItem, //更新item数据
}

class ProjectTabActionCreator {
  static Action onAction() {
    return const Action(ProjectTabAction.action);
  }

  static Action updateItem(var list) {
    return Action(ProjectTabAction.updateItem, payload: list);
  }

}
