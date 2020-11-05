import 'package:flutter/material.dart';
import 'package:flutter_wan/bean/user/hot_word_bean.dart';
import 'package:flutter_wan/module/main/search/state.dart';

class SearchHotWord extends StatelessWidget {
  SearchHotWord({this.data});

  final SearchState data;

  @override
  Widget build(BuildContext context) {
    return _buildHotWord();
  }

  ///主体入口
  Widget _buildHotWord() {
    return _buildBg(
      children: data.hotList.map((e) => _buildItem(e)).toList(),
    );
  }

  Widget _buildItem(Data item) {
    return Container();
  }

  //一些背景设置,无关页面,无需在乎
  Widget _buildBg({List<Widget> children}) {
    return Container(
      child: Wrap(
        children: children,
      ),
    );
  }
}
