import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/utils/ui_adapter.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(NaviItemState state, Dispatch dispatch, ViewService viewService) {
  return _itemWidget(state, viewService);
}

Widget _itemWidget(NaviItemState state, ViewService viewService){
  return Card(
    child: InkWell(
      child: Column(
        children: <Widget>[
          //头部
          Container(
            color: Colors.black12,
            padding: EdgeInsets.only(top:setWidth(15), bottom: setWidth(15)),
            child: Center(
              child: Text(state.itemDetail.name, style: TextStyle(fontSize: setSp(34)) ),
            ),
          ),

          //内容
          ListView.builder(
            itemBuilder: viewService.buildAdapter().itemBuilder,
            itemCount: viewService.buildAdapter().itemCount,
          ),

        ],
      ),
    ),
  );
}