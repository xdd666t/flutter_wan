//顶部appbar封装
import 'package:flutter/material.dart';
import 'package:flutter_wan/app/typedef/function.dart';

AppBar mainAppBar({ParamVoidCallback onTap}) {
  return AppBar(
    title: Text("玩Android"),
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: (){

        },
      )
    ],
  );
}
