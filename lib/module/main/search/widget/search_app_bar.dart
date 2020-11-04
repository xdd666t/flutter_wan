import 'package:flutter/material.dart';
import 'package:flutter_wan/app/typedef/function.dart';
import 'package:flutter_wan/view/widget/search/search_bar.dart';

AppBar searchAppBar({ParamSingleCallback<String> onSearch}) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Container(
      child: SearchBar(
        onComplete: onSearch,
        hintText: '请输入查询内容',
      ),
    ),
  );
}
