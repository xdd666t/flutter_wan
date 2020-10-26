import 'package:flutter/material.dart';
import 'package:flutter_wan/app/typedef/function.dart';

import '../state.dart';

class MainBottomNavigation extends StatelessWidget {
  MainBottomNavigation({
    this.data,
    this.onTap,
  });

  ///数据源
  final MainState data;

  ///点击回调
  final ParamSingleCallback<int> onTap;

  @override
  Widget build(BuildContext context) {
    return _bottom();
  }

  Widget _bottom() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: data.tabBar,
      currentIndex: data.selectedIndex,
      selectedItemColor: Colors.lightBlue,
      unselectedItemColor: Colors.black54,
      onTap: (int index) {
        onTap(index);
        data.pageController.jumpToPage(index);
      },
    );
  }
}
