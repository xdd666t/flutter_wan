import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/page/main/collect/widget/CollectView.dart';

import 'state.dart';

Widget buildView(
    CollectState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(title: Text('收藏')),
    body: _body(),
  );
}

Widget _body() {
  return CollectView();
}
