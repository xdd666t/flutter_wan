import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MainAction {
  //切换tab
  selectTab,
  //侧边栏item点击
  clickDrawer,
  //搜索
  toSearch,
  //统一刷新事件
  onRefresh,
}

class MainActionCreator {
  static Action toSearch() {
    return Action(MainAction.toSearch);
  }

  static Action selectTab(int index) {
    return Action(MainAction.selectTab, payload: index);
  }

  static Action onRefresh() {
    return Action(MainAction.onRefresh);
  }

  static Action clickDrawer(String tag) {
    return Action(MainAction.clickDrawer, payload: tag);
  }
}
