import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'widget/register_view.dart';

Widget buildView(
    RegisterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(title: Text('登录')),
    body: SingleChildScrollView(
      child: RegisterView(
        //用户名
        onUserName: (String msg) => state.userName = msg,
        //密码
        onPassword: (String msg) => state.password = msg,
        //确认密码
        onRePassword: (String msg) => state.rePassword = msg,
        //注册
        onRegister: () => dispatch(RegisterActionCreator.onRegister()),
      ),
    ),
  );
}
