import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TreeDetailTabState state, Dispatch dispatch, ViewService viewService) {
  if(state.items != null) {
    return _itemWidget(viewService);
  }else{
    return Center(child: CircularProgressIndicator(),); //加载动画
  }
}

Widget _itemWidget(ViewService viewService){
  return ListView.builder(
    itemBuilder: viewService.buildAdapter().itemBuilder,
//    itemCount: viewService.buildAdapter().itemCount,
    itemCount: viewService.buildAdapter().itemCount,
  );
}