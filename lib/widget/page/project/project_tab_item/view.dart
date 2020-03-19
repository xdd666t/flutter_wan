import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/utils/ui_adapter.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ProjectTabItemState state, Dispatch dispatch, ViewService viewService) {
  return Card(
    child: InkWell(
      child: Container(
        padding: EdgeInsets.all(setWidth(30)),
        child: Text(state.itemDetail.title),
      ),
      onTap: (){

      },
    ),
  );
}


