import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CollectItemAction { action }

class CollectItemActionCreator {
  static Action onAction() {
    return const Action(CollectItemAction.action);
  }
}
