import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/module/main/search/action.dart';

import 'state.dart';
import 'widget/search_app_bar.dart';

Widget buildView(
    SearchState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: searchAppBar(onSearch: (msg) {
      dispatch(SearchActionCreator.search(msg));
    }),
    body: _body(viewService),
  );
}

Widget _body(ViewService viewService) {
  return viewService.buildComponent("ArticleList");
}
