import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SearchAction {
  //搜索文章信息
  search,
  onRefresh,
}

class SearchActionCreator {
  static Action search(String msg) {
    return Action(SearchAction.search, payload: msg);
  }

  static Action onRefresh() {
    return const Action(SearchAction.onRefresh);
  }
}
