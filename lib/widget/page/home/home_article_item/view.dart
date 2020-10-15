import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/page/home/home_article_item/state.dart';
import 'package:flutter_wan/widget/page/home/home_article_item/widget/home_item_detail.dart';

import 'action.dart';

Widget buildView(
    HomeArticleItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: HomeItemDetail(
      data: state,
      onTap: () {
        dispatch(HomeArticleItemActionCreator.openArticleContent());
      },
    ),
  );
}
