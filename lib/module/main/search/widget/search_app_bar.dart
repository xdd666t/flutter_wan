import 'package:flutter/material.dart';
import 'package:flutter_wan/app/typedef/function.dart';
import 'package:flutter_wan/view/widget/search/search_bar.dart';

import '../state.dart';

AppBar searchAppBar({
  SearchState data,
  ParamSingleCallback<String> onSearch,
  ParamVoidCallback onClear,
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Container(
      child: SearchBar(
        controller: data.controller,
        onComplete: onSearch,
        hintText: '请输入查询内容',
        onClear: onClear,
      ),
    ),
  );
}
