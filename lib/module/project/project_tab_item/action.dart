import 'package:fish_redux/fish_redux.dart';

enum ProjectTabItemAction {
  openArticle
}

class ProjectTabItemActionCreator {
  static Action openArticle(var item) {
    return Action(ProjectTabItemAction.openArticle, payload: item);
  }
}
