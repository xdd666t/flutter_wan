import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    TreeDetailTabState state, Dispatch dispatch, ViewService viewService) {
  if (state.items.length != 0) {
    return _body(viewService);
  } else {
    //加载动画
    return Center(child: CircularProgressIndicator());
  }
}

Widget _body(ViewService viewService) {
  return ListView.builder(
    itemBuilder: viewService.buildAdapter().itemBuilder,
    itemCount: viewService.buildAdapter().itemCount,
  );
}
