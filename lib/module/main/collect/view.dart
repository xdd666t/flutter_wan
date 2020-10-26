import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';
import 'widget/CollectView.dart';

Widget buildView(
    CollectState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(title: Text('收藏'), elevation: 0,),
    body: _body(),
  );
}

Widget _body() {
  return CollectView();
}
