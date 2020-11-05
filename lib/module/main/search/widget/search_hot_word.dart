import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_wan/app/typedef/function.dart';
import 'package:flutter_wan/app/utils/ui/ui_adapter.dart';
import 'package:flutter_wan/bean/user/hot_word_bean.dart';
import 'package:flutter_wan/module/main/search/state.dart';

class SearchHotWord extends StatelessWidget {
  SearchHotWord({
    this.data,
    this.onHot,
  });

  final SearchState data;

  final ParamSingleCallback<Data> onHot;

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
    return InkWell(
      customBorder: StadiumBorder(),
      onTap: () {
        onHot(item);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: auto(30),
          vertical: auto(10),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color:
                Color.fromRGBO(randomColor(), randomColor(), randomColor(), 1),
            width: auto(2),
          ),
          borderRadius: BorderRadius.all(Radius.circular(auto(100))),
        ),
        child: Text(item.name),
      ),
    );
  }

  //一些背景设置,无关页面,无需在乎
  Widget _buildBg({List<Widget> children}) {
    return Container(
      margin: EdgeInsets.only(top: auto(20), left: auto(36), right: auto(36)),
      child: Material(
        color: Colors.transparent,
        child: Wrap(
          runSpacing: 10,
          spacing: 10,
          children: children,
        ),
      ),
    );
  }

  int randomColor() {
    return Random().nextInt(255);
  }
}
