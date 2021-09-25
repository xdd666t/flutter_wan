import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(TreeState state, Dispatch dispatch, ViewService viewService) {
  if (state.itemList.length != 0) {
    return ListView.builder(
      itemBuilder: viewService.buildAdapter().itemBuilder,
      itemCount: viewService.buildAdapter().itemCount,
    );
  } else {
    //增加加载动画
    return Center(child: CircularProgressIndicator());
  }
}
