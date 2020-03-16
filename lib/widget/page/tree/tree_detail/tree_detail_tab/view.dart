import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TreeDetailTabState state, Dispatch dispatch, ViewService viewService) {
  return _itemWidget(viewService);
}

Widget _itemWidget(ViewService viewService){
  return ListView.builder(
    itemBuilder: viewService.buildAdapter().itemBuilder,
//    itemCount: viewService.buildAdapter().itemCount,
    itemCount: 2,
  );
}