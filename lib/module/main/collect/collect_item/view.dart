import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/app/utils/ui/ui_adapter.dart';

import 'state.dart';

Widget buildView(
    CollectItemState state, Dispatch dispatch, ViewService viewService) {
  return _body(state, dispatch);
}

Widget _body(CollectItemState state, Dispatch dispatch) {
  return Card(
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: auto(20),
        vertical: auto(15),
      ),
      child: Text(state.item.title),
    ),
  );
}
