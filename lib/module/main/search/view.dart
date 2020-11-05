import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/module/main/search/action.dart';
import 'package:flutter_wan/module/main/search/widget/search_hot_word.dart';

import 'state.dart';
import 'widget/search_app_bar.dart';

Widget buildView(
    SearchState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: searchAppBar(onSearch: (msg) {
      dispatch(SearchActionCreator.search(msg));
    }),
    body: _body(state, dispatch, viewService),
  );
}

Widget _body(SearchState state, Dispatch dispatch, ViewService viewService) {
  return Stack(
    children: [
      //热搜词
      SearchHotWord(
        data: state,
      ),

      //列表
      viewService.buildComponent("ArticleList"),
    ],
  );
}
