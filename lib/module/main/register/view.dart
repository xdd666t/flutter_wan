import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'widget/register_view.dart';

Widget buildView(RegisterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(title: Text('登录')),
    body: _body(state, dispatch),
  );
}


Widget _body(RegisterState state, Dispatch dispatch) {
  return SingleChildScrollView(
    child: RegisterView(
      onUserName: (String msg) {
        //用户名
        state.userName = msg;
      },
      onPassword: (String msg) {
        //密码
        state.password = msg;
      },
      onRePassword: (String msg) {
        //确认密码
        state.rePassword = msg;
      },
      onRegister: () {
        //注册
        dispatch(RegisterActionCreator.onRegister());
      },
    ),
  );
}
