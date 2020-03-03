import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeArticleItemAction { action }

class HomeArticleItemActionCreator {
  static Action onAction() {
    return const Action(HomeArticleItemAction.action);
  }
}
