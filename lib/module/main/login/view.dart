import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'widget/login_view.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(title: Text('登录')),
    body: SingleChildScrollView(
      child: LoginView(
        //用户名
        onUserName: (String msg) => state.userName = msg,
        //密码
        onPassword: (String msg) => state.password = msg,
        //注册
        onRegister: () => dispatch(LoginActionCreator.onRegister()),
        //登录
        onLogin: () => dispatch(LoginActionCreator.onLogin()),
      ),
    ),
  );
}
