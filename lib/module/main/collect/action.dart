import 'package:fish_redux/fish_redux.dart';

enum CollectAction {
  onRefresh,
  //上拉加载
  onListLoad,
  //下拉刷新
  onListRefresh,
}

class CollectActionCreator {
  static Action onRefresh() {
    return const Action(CollectAction.onRefresh);
  }

  static Action onListLoad() {
    return Action(CollectAction.onListLoad);
  }

  static Action onListRefresh() {
    return Action(CollectAction.onListRefresh);
  }
}
