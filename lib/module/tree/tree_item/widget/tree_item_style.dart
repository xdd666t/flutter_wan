import 'package:flutter/material.dart';
import 'package:flutter_wan/app/typedef/function.dart';
import 'package:flutter_wan/app/utils/ui/ui_adapter.dart';

import '../state.dart';

class TreeItemStyle extends StatelessWidget {
  TreeItemStyle({
    this.data,
    this.onTap,
  });

  ///数据源
  final TreeItemState data;

  ///点击事件
  final ParamVoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return _tree();
  }

  Widget _tree() {
    return _itemBg(
      child: Column(
        children: <Widget>[
          //第一层标题
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(auto(20)),
            child: Text(data.item.name),
          ),

          //第二层各种类别
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: auto(20),
              right: auto(20),
              bottom: auto(20),
            ),
            child: Wrap(
              spacing: auto(25),
              runSpacing: auto(20),
              children: data.item.children.map((e) {
                return Text(e.name, style: TextStyle(height: 1));
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  //item布局总样式(处理点击效果,点击事件等)
  Widget _itemBg({Widget child}) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(auto(20)),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(auto(20)),
          onTap: onTap,
          child: child,
        ));
  }
}
