import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ProjectTabItemAction { action }

class ProjectTabItemActionCreator {
  static Action onAction() {
    return const Action(ProjectTabItemAction.action);
  }
}
