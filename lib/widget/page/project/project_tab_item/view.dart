import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/bean/project/project_detail_bean.dart';

import 'action.dart';
import 'state.dart';
import 'widget/project_item_detail.dart';

Widget buildView(
    ProjectTabItemState state, Dispatch dispatch, ViewService viewService) {
  return ProjectItemDetail(
    data: state,
    onTap: (ProjectDetailDataData item) {
      dispatch(ProjectTabItemActionCreator.openArticle(item));
    },
  );
}
