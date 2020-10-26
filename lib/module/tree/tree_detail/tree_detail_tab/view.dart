import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    TreeDetailTabState state, Dispatch dispatch, ViewService viewService) {
  return viewService.buildComponent("ArticleList");
}

