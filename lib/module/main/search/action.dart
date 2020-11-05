import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/user/hot_word_bean.dart';

//TODO replace with your own action
enum SearchAction {
  //搜索文章信息
  search,
  onRefresh,
  //搜索热词
  searchHotWord,
  //删除搜索内容
  onClear,
}

class SearchActionCreator {
  static Action onClear() {
    return Action(SearchAction.onClear);
  }

  static Action searchHotWord(Data item) {
    return Action(SearchAction.searchHotWord, payload: item);
  }

  static Action search(String msg) {
    return Action(SearchAction.search, payload: msg);
  }

  static Action onRefresh() {
    return const Action(SearchAction.onRefresh);
  }
}
