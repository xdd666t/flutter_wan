import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/app/utils/ui_adapter.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NaviDetailItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    margin: EdgeInsets.only(left: auto(10), top: auto(10), right: auto(10)),
    child: InkWell( //设置点击效果
      borderRadius: BorderRadius.circular(auto(30)),
      child: Container( //设置圆角
        padding: EdgeInsets.all(auto(15)),
        decoration: BoxDecoration(
            color: Color(0x1A333333),
            borderRadius:BorderRadius.circular(auto(30))
        ),
        child:  Center( //设置文字
            child: Text(state.itemDetail.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
        ),
      ),
      onTap: (){
        dispatch(NaviDetailItemActionCreator.openArticle(state.itemDetail));
      },
    ),
  );
}
