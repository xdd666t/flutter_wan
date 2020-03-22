import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/page/home/home_article_item/state.dart';
import 'package:flutter_wan/widget/utils/ui_adapter.dart';

import 'action.dart';

Widget buildView(HomeArticleItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: _itemWidget(state, dispatch)
  );
}

//整个item布局
Widget _itemWidget(state, dispatch){
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(setWidth(20))),
    margin: EdgeInsets.all(5),
    child: InkWell( //点击效果
      borderRadius: BorderRadius.circular(setWidth(20)),
      child: _itemContentWidget(state),
      onTap: () => dispatch(HomeArticleItemActionCreator.openArticleContent(state)),
    ),
  );
}
//item 内容排列
Widget _itemContentWidget(state){
  return Column(
    children: <Widget>[
      //第一层: 技术分类
      Container(
        margin: EdgeInsets.only(left: setWidth(25), top: setWidth(30)),
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
        margin: EdgeInsets.only(left: setWidth(25), right: setWidth(25),top: setWidth(20)),
        child: Text(state.itemDtail.title, style: TextStyle(fontSize: setSp(32))),
      ),
      //第三层: 标题底下时间,作者
      Container(
        margin: EdgeInsets.only(left: setWidth(25), right: setWidth(25), top: setWidth(20), bottom: setWidth(30)),
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