import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';
import 'widget/search_app_bar.dart';

Widget buildView(
    SearchState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: searchAppBar(),
    body: _body(),
  );
}

Widget _body() {
  return Container();
}
