import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'widget/collect_item_view.dart';

Widget buildView(
    CollectItemState state, Dispatch dispatch, ViewService viewService) {
  return _body(state, dispatch);
}

Widget _body(CollectItemState state, Dispatch dispatch) {
  return CollectItemView(
    data: state,
    onTap: () {
      dispatch(CollectItemActionCreator.toDetail());
    },
  );
}
