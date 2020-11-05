import 'package:fish_redux/fish_redux.dart';

enum ArticleListAction {
  //打开banner文章内容
  openBannerContent,
  //上拉加载
  onListLoad,
  //下拉刷新
  onListRefresh,
  //界面刷新
  onRefresh,
  //其他模块可以使用该使用刷新列表
  onBoastRefresh,
}

class ArticleListActionCreator {
  static Action onBoastRefresh() {
    return Action(ArticleListAction.onBoastRefresh);
  }

  static Action onRefresh() {
    return Action(ArticleListAction.onRefresh);
  }

  static Action onListLoad() {
    return Action(ArticleListAction.onListLoad);
  }

  static Action onListRefresh() {
    return Action(ArticleListAction.onListRefresh);
  }

  static Action openBannerContent(int index) {
    return Action(ArticleListAction.openBannerContent, payload: index);
  }
}
