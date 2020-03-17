import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/utils/keep_alive_page.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NaviState state, Dispatch dispatch, ViewService viewService) {
  return keepAliveWrapper(_itemWidget(state, viewService));
}

Widget _itemWidget(NaviState state, ViewService viewService){
  if(state.items != null) {
    //更新内部item数据


    return ListView.builder(
      itemBuilder: viewService.buildAdapter().itemBuilder,
      itemCount: viewService.buildAdapter().itemCount,
    );
  }else{
    return Center(child: CircularProgressIndicator(),);
  }
}

