import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/page/main/login/action.dart';
import 'package:flutter_wan/widget/page/main/login/widget/login_view.dart';

import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(title: Text('登录')),
    body: _body(state, dispatch),
  );
}

Widget _body(LoginState state, Dispatch dispatch) {
  return SingleChildScrollView(
    child: LoginView(
      onUserName: (String msg) {
        //用户名
        state.userName = msg;
      },
      onPassword: (String msg) {
        //密码
        state.password = msg;
      },
      onRegister: () {
        //注册
        dispatch(LoginActionCreator.onRegister());
      },
      onLogin: () {
        //登录
        dispatch(LoginActionCreator.onLogin());
      },
    ),
  );
}
