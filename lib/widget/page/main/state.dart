import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/page/home/page.dart';
import 'package:flutter_wan/widget/page/navi/page.dart';
import 'package:flutter_wan/widget/page/project/page.dart';
import 'package:flutter_wan/widget/page/tree/page.dart';

class MainState implements Cloneable<MainState> {
  ///底部导航栏tab标识
  int selectedIndex = 0;

  ///tab页面
  List<Widget> tabPage;

  @override
  MainState clone() {
    return MainState()
      ..selectedIndex = selectedIndex
      ..tabPage = tabPage;
  }
}

MainState initState(Map<String, dynamic> args) {
  return MainState()
    ..selectedIndex = 0
    ..tabPage = [
      HomePage().buildPage(null),
      TreePage().buildPage(null),
      NaviPage().buildPage(null),
      ProjectPage().buildPage(null)
    ];
}
