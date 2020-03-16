import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/utils/keep_alive_page.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TreeState state, Dispatch dispatch, ViewService viewService) {
  if(state.itemList != null){
    //保活子页面
    return keepAliveWrapper(_bodyWidget(viewService));
  }else{
    return Center(child: CircularProgressIndicator(),);
  }
}

Widget _bodyWidget(var viewService){
  return ListView.builder(
    itemBuilder: viewService.buildAdapter().itemBuilder,
    itemCount: viewService.buildAdapter().itemCount,
  );
}