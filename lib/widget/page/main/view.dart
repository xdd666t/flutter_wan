import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'action.dart';
import 'state.dart';

MainState _mainState;
Dispatch _dispatch;
ViewService _viewService;

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  _mainState = state;
  _dispatch = dispatch;
  _viewService = viewService;
  // page 转换成 widget 通过 buildPage 实现，参数表示要传递的参数，无需传递则为 null 即可

  return _bottomNavigationBarUi();
}

// 底部tab界面
Widget _bottomNavigationBarUi() {
  var _pageController = PageController();

  return Scaffold(
    appBar: AppBar(title: Text("玩Android"), elevation: 0,),
    body:  PageView.builder(
        physics: NeverScrollableScrollPhysics(), //禁止页面左右滑动切换
        controller: _pageController,
        onPageChanged: (index){
          //切换页面时的回调s
          _dispatch(MainActionCreator.selectTab(index));
        },
        //回调函数
        itemCount: _mainState.tabPage.length,
        itemBuilder: (context, index) => _mainState.tabPage[index]
    ),
//    body: _mainState.tabPage[_mainState.selectedIndex],
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.account_balance), title: Text("主页")),
        BottomNavigationBarItem(icon: Icon(Icons.print), title: Text("知识体系")),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("导航")),
        BottomNavigationBarItem(icon: Icon(Icons.tab), title: Text("项目"))
      ],
      currentIndex: _mainState.selectedIndex,
      selectedItemColor: Colors.lightBlue,
      unselectedItemColor: Colors.black54,
      onTap: (int index) {
        _dispatch(MainActionCreator.selectTab(index));
        _pageController.jumpToPage(index);
      },
    ),
  );
}

