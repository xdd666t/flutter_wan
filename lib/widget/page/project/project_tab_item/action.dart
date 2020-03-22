import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ProjectTabItemAction { action,
  openArticle
}

class ProjectTabItemActionCreator {
  static Action openArticle(var map) {
    return Action(ProjectTabItemAction.openArticle, payload: map);
  }
}
