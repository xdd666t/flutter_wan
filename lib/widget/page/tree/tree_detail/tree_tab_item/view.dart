import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/app/utils/keep_alive_page.dart';
import 'package:flutter_wan/app/utils/ui_adapter.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TreeTabItemState state, Dispatch dispatch, ViewService viewService) {

  return _itemWidget(state, dispatch);
}

//整个item布局
Widget _itemWidget(TreeTabItemState state,Dispatch dispatch){
  return Card(
    margin: EdgeInsets.all(5),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(auto(20))),
    child: InkWell( //点击效果
      borderRadius: BorderRadius.circular(auto(20)),
      child: _itemContentWidget(state),
      onTap: () => dispatch(TreeTabItemActionCreator.openArticleContent(state.itemDtail)),
    ),
  );
}
//item 内容排列
Widget _itemContentWidget(TreeTabItemState state){
  return Column(
    children: <Widget>[
      //第一层: 技术分类
      Container(
        margin: EdgeInsets.only(left: auto(25), top: auto(30)),
        child: Row(
          children: <Widget>[ //写俩层，方便以后要处理字体颜色
            Text('分类: '),
            Text(
              '${state.itemDtail.superChapterName}/${state.itemDtail.chapterName}',
              style: TextStyle(color: Colors.lightBlueAccent),
            ),
          ],
        ),
      ),
      //第二层: 标题
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: auto(25), right: auto(25),top: auto(20)),
        child: Text(state.itemDtail.title, style: TextStyle(fontSize: setSp(32))),
      ),
      //第三层: 标题底下时间,作者
      Container(
        margin: EdgeInsets.only(left: auto(25), right: auto(25), top: auto(20), bottom: auto(30)),
        child: Stack(
          children: <Widget>[
            Container(
              child: Text('作者: ${state.itemDtail.author == "" ?  "未知" : state.itemDtail.author}'),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('时间: '),
                  Text(state.itemDtail.niceShareDate),
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}