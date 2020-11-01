import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/app/utils/ui/keep_alive_page.dart';
import 'package:flutter_wan/bean/common/btn_info.dart';
import 'package:flutter_wan/module/home/page.dart';
import 'package:flutter_wan/module/navi/page.dart';
import 'package:flutter_wan/module/project/page.dart';
import 'package:flutter_wan/module/tree/page.dart';

class MainState implements Cloneable<MainState> {
  ///底部导航栏tab标识
  int selectedIndex = 0;

  ///tab页面
  List<Widget> tabPage;

  ///tab按钮
  List<BottomNavigationBarItem> tabBar;

  ///页面控制器
  PageController pageController;

  ///抽屉items数据
  List<BtnInfo> drawerItems;

  @override
  MainState clone() {
    return MainState()
      ..selectedIndex = selectedIndex
      ..pageController = pageController
      ..drawerItems = drawerItems
      ..tabBar = tabBar
      ..tabPage = tabPage;
  }
}

MainState initState(Map<String, dynamic> args) {
  return MainState()
    ..selectedIndex = 0
    ..pageController = PageController()
    ..tabBar = [
      BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: "主页"),
      BottomNavigationBarItem(icon: Icon(Icons.print), label: "知识体系"),
      BottomNavigationBarItem(icon: Icon(Icons.poll), label: "导航"),
      BottomNavigationBarItem(icon: Icon(Icons.tab), label: "项目")
    ]
    ..tabPage = [
      keepAlivePage(HomePage().buildPage(null)),
      keepAlivePage(TreePage().buildPage(null)),
      keepAlivePage(NaviPage().buildPage(null)),
      keepAlivePage(ProjectPage().buildPage(null))
    ]
    ..drawerItems = [
      BtnInfo(title: '登录', tag: 'person', icon: Icon(Icons.person)),
      BtnInfo(title: '我的收藏', tag: 'myCollect', icon: Icon(Icons.favorite)),
      BtnInfo(title: '关于', tag: 'about', icon: Icon(Icons.code)),
      BtnInfo(title: '反馈', tag: 'feedback', icon: Icon(Icons.announcement)),
    ];
}
