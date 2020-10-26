import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CollectAction { action }

class CollectActionCreator {
  static Action onAction() {
    return const Action(CollectAction.action);
  }
}
