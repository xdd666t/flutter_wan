import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'widget/article_item_detail.dart';

Widget buildView(
    ArticleItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: ArticleItemDetail(
      data: state,
      onTap: () {
        dispatch(ArticleItemActionCreator.openArticleContent());
      },
    ),
  );
}
