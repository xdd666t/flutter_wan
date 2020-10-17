import 'package:fish_redux/fish_redux.dart';

enum NaviItemAction {
  //打开文章
  openArticle,
}

class NaviItemActionCreator {


  static Action openArticle(var item) {
    return Action(NaviItemAction.openArticle, payload: item);
  }
}
