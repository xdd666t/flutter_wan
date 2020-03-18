import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NaviDetailItemAction { action,
  openArticle,
}

class NaviDetailItemActionCreator {
  static Action onAction() {
    return const Action(NaviDetailItemAction.action);
  }

  static Action openArticle(var articleInfo) {
    return Action(NaviDetailItemAction.openArticle, payload: articleInfo);
  }
}
