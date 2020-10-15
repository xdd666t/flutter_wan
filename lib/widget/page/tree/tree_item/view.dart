import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/app/utils/ui_adapter.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TreeItemState state, Dispatch dispatch, ViewService viewService) {

  return _itemWidget(state, dispatch);
//  return _itemWidget(state);
}

//item布局总样式(处理点击效果,点击事件等)
Widget _itemWidget(state, dispatch){
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(auto(20))),
      child: InkWell(
        borderRadius: BorderRadius.circular(auto(20)),
        onTap: (){
          dispatch(TreeItemActionCreator.toTreeDetail(state.item));
        },
        child: _itemContentWidget(state),
      )
  );
}
//纵排列布局
Widget _itemContentWidget(state){
  String sortName = "";
  for(int i=0; i<state.item.children.length; i++) {
    sortName =  sortName + state.item.children[i].name + "   ";
  }

  return Column(
    children: <Widget>[
      //第一层文字
      Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.all(auto(20)),
        child: Text(state.item.name),
      ),

      //第二层各种类别
      Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(left: auto(20), right: auto(20), bottom: auto(20)),
        child: Text(sortName),
      )
    ],
  );
}
