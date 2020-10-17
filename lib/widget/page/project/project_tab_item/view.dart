import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/app/utils/ui_adapter.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    ProjectTabItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    margin: EdgeInsets.only(top: auto(15), left: auto(10), right: auto(10)),
    child: Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(auto(20))),
      child: InkWell(
        borderRadius: BorderRadius.circular(auto(20)),
        child: Row(
          children: <Widget>[
            //左边图片
            Container(
              margin: EdgeInsets.all(auto(20)),
              width: auto(180),
              height: auto(350),
              child: Image.network(
                state.itemDetail.envelopePic,
                fit: BoxFit.fill,
              ),
            ),
            //右边的纵向布局
            Expanded(
                child: Container(
              margin: EdgeInsets.all(auto(20)),
              height: auto(350),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  //标题
                  Expanded(
                    flex: 1,
                    child: Text(
                      state.itemDetail.title,
                      style: TextStyle(fontSize: setSp(34)),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  //内容
                  Expanded(
                      flex: 5,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          state.itemDetail.desc,
                          style: TextStyle(fontSize: setSp(28)),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        //作者
                        Row(
                          children: <Widget>[
                            Text("作者："),
                            Expanded(
                              child: Text(state.itemDetail.author,
                                  style: TextStyle(color: Colors.blue)),
                            )
                          ],
                        ),
                        //时间
                        Row(
                          children: <Widget>[
                            Text("时间："),
                            Expanded(
                              child: Text(state.itemDetail.niceDate,
                                  style: TextStyle(color: Colors.blue)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
        onTap: () {
          Map<String, dynamic> map = {
            "title": state.itemDetail.title,
            "url": state.itemDetail.link
          };
          dispatch(ProjectTabItemActionCreator.openArticle(map));
        },
      ),
    ),
  );
}
