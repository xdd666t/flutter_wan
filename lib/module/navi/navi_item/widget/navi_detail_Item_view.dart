import 'package:flutter/material.dart';
import 'package:flutter_wan/app/typedef/function.dart';
import 'package:flutter_wan/app/utils/ui/ui_adapter.dart';
import 'package:flutter_wan/bean/navi/navi_info_bean.dart';

import '../state.dart';

class NaviItemView extends StatelessWidget {
  NaviItemView({
    this.data,
    this.onTap,
  });

  ///数据源
  final NaviItemState data;

  ///回调点击信息
  final ParamSingleCallback<Articles> onTap;

  @override
  Widget build(BuildContext context) {
    return _itemDetail();
  }

  ///主体模块
  Widget _itemDetail() {
    return _itemBg(
      child: Column(
        children: <Widget>[
          //头部
          _buildTitle(),

          //内容List
          _buildContentList(),
        ],
      ),
    );
  }

  Widget _buildContentList() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: auto(20)),
      padding: EdgeInsets.symmetric(horizontal: auto(20)),
      child: Wrap(
        runSpacing: auto(15),
        spacing: auto(25),
        children: data.itemDetail.articles.map((e) {
          return itemStyle(e);
        }).toList(),
      ),
    );
  }

  Widget itemStyle(Articles item) {
    return InkWell(
      //设置点击效果
      borderRadius: BorderRadius.circular(auto(30)),
      child: Container(
        //设置圆角
        padding: EdgeInsets.symmetric(
          horizontal: auto(30),
          vertical: auto(15),
        ),
        decoration: BoxDecoration(
            color: Color(0x1A333333),
            borderRadius: BorderRadius.circular(auto(30))),
        child: Text(
          item.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      onTap: () {
        onTap(item);
      },
    );
  }

  Widget _buildTitle() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(auto(30)),
          topRight: Radius.circular(auto(30)),
        ),
        color: Colors.black12,
      ),
      padding: EdgeInsets.only(top: auto(15), bottom: auto(15)),
      child: Center(
        child: Text(
          data.itemDetail.name,
          style: TextStyle(fontSize: setSp(34)),
        ),
      ),
    );
  }

  Widget _itemBg({Widget child}) {
    return Card(
      margin: EdgeInsets.all(auto(20)),
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(auto(30))),
      child: Container(
        padding: EdgeInsets.only(bottom: auto(30)),
        child: child,
      ),
    );
  }
}
