import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/bean/navi/navi_info_bean.dart';
import 'package:flutter_wan/widget/page/navi/navi_item/action.dart';
import 'package:flutter_wan/widget/page/navi/navi_item/widget/navi_detail_Item_view.dart';

import 'state.dart';

Widget buildView(
    NaviItemState state, Dispatch dispatch, ViewService viewService) {
  return _body(state, dispatch);
}

Widget _body(NaviItemState state, Dispatch dispatch) {
  return NaviItemView(
    data: state,
    onTap: (Articles item){
      dispatch(NaviItemActionCreator.openArticle(item));
    },
  );
}
