import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TreeTabItemState state, Dispatch dispatch, ViewService viewService) {
  return _itemWidget();
}

Widget _itemWidget(){
  return Card(
    child: InkWell(
      child: Text("................."),
    ),
  );
}