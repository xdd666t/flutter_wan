import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SearchAction { action }

class SearchActionCreator {
  static Action onAction() {
    return const Action(SearchAction.action);
  }
}
