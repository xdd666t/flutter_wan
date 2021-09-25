import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    ProjectTabState state, Dispatch dispatch, ViewService viewService) {
  if (state.items != null) {
    return ListView.builder(
      itemBuilder: viewService.buildAdapter().itemBuilder,
      itemCount: viewService.buildAdapter().itemCount,
    );
  } else {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
