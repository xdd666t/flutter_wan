import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(NaviState state, Dispatch dispatch, ViewService viewService) {
  return _body(state, viewService);
}

Widget _body(NaviState state, ViewService viewService) {
  if (state.items != null) {
    //更新内部item数据
    return ListView.builder(
      itemBuilder: viewService.buildAdapter().itemBuilder,
      itemCount: viewService.buildAdapter().itemCount,
    );
  } else {
    return Center(child: CircularProgressIndicator());
  }
}
