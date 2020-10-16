import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    ProjectTabState state, Dispatch dispatch, ViewService viewService) {
  if (state.items != null) {
    return _itemWidget(viewService);
  } else {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

Widget _itemWidget(ViewService viewService) {
  return ListView.builder(
    itemBuilder: viewService.buildAdapter().itemBuilder,
    itemCount: viewService.buildAdapter().itemCount,
  );
}
