import 'package:flutter/material.dart';
import 'package:flutter_wan/app/typedef/function.dart';
import 'package:flutter_wan/widget/page/main/state.dart';

class MainBody extends StatelessWidget {
  MainBody({
    this.data,
    this.onChanged,
  });

  ///数据源
  final MainState data;

  ///页面切换监听
  final ParamSingleCallback<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    return PageView.builder(
      physics: NeverScrollableScrollPhysics(),
      //禁止页面左右滑动切换
      controller: data.pageController,
      onPageChanged: (index) {
        //切换页面时的回调
        onChanged(index);
      },
      //回调函数
      itemCount: data.tabPage.length,
      itemBuilder: (context, index) => data.tabPage[index],
    );
  }
}
