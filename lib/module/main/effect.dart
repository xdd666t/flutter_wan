import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';
import 'package:flutter_wan/app/utils/cache/sp_util.dart';
import 'package:flutter_wan/app/utils/ui/view_util.dart';
import 'package:flutter_wan/bean/common/article_detail_bean.dart';

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    //初始化
    Lifecycle.initState: _init,
    //切换tab
    MainAction.selectTab: _selectTab,
    //选择相应抽屉内部的item
    MainAction.clickDrawer: _clickDrawer,
    //跳转搜索页面
    MainAction.toSearch: _toSearch,
  });
}

void _toSearch(Action action, Context<MainState> ctx) async {

}
void _init(Action action, Context<MainState> ctx) async {
  await ViewUtil.initFinish();
  //需要等待SpUtil中对象初始化完成
  _initUserInfo(ctx);
}

void _initUserInfo(Context<MainState> ctx) async {
  //判断下用户是否登录
  String userName = await SpUtil.get('userName');
  if (userName != null) {
    ctx.state.drawerItems[0].title = userName;
    ctx.dispatch(MainActionCreator.onRefresh());
  }
}

void _clickDrawer(Action action, Context<MainState> ctx) async {
  switch (action.payload) {
    case 'person':
      //如果不是登录状态,则去跳转登录界面
      var isRefresh = await Navigator.pushNamed(
        ctx.context,
        RouteConfig.loginPage,
      );
      if (isRefresh ?? false) {
        _initUserInfo(ctx);
      }
      break;
    case 'myCollect':
      //收藏
      Navigator.pushNamed(ctx.context, RouteConfig.collectPage);
      break;
    case 'about':
      //关于
      _toAbout(ctx);
      break;
    case 'feedback':
      //反馈
      _toFeedback(ctx);
      break;
  }
}

void _toAbout(Context<MainState> ctx) {
  //传递过来的数据
  ArticleDetailBean articleDetailBean = ArticleDetailBean(
    url: 'https://github.com/CNAD666/flutter_wan',
    title: 'fish_redux版玩android',
  );

  Navigator.pushNamed(
    ctx.context,
    RouteConfig.webViewPage,
    arguments: {
      "articleDetail": articleDetailBean,
    },
  );
}

void _toFeedback(Context<MainState> ctx) {
  //传递过来的数据
  ArticleDetailBean articleDetailBean = ArticleDetailBean(
    url: 'https://github.com/CNAD666/flutter_wan/issues',
    title: 'fish_redux版玩android',
  );

  Navigator.pushNamed(
    ctx.context,
    RouteConfig.webViewPage,
    arguments: {
      "articleDetail": articleDetailBean,
    },
  );
}

void _selectTab(Action action, Context<MainState> ctx) {
  ctx.state.selectedIndex = action.payload;

  ctx.dispatch(MainActionCreator.onRefresh());
}
