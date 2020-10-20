import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';
import 'package:flutter_wan/app/utils/show/toast_util.dart';
import 'package:flutter_wan/app/utils/tool/string_util.dart';
import 'package:flutter_wan/http/api.dart';

import 'action.dart';
import 'state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.onLogin: _onLogin,
    LoginAction.onRegister: _onRegister,
  });
}

void _onRegister(Action action, Context<LoginState> ctx) {
  ///注册操作
  Navigator.pushNamed(ctx.context, RouteConfig.registerPage);
}

void _onLogin(Action action, Context<LoginState> ctx) {
  if (!_isAccess(ctx)) {
    return;
  }
  //登录操作
  var data = {
    'userName': ctx.state.userName,
    'password': ctx.state.password,
  };
  var result = Dio().post(ApiUrl.LOGIN, data: data);
  print(result.toString());
}

bool _isAccess(Context<LoginState> ctx) {
  var state = ctx.state;

  if (StringUtil.isEmpty(state.userName)) {
    showToast('请输入用户名');
    return false;
  }

  if (StringUtil.isEmpty(state.password)) {
    showToast('请输入密码');
    return false;
  }

  return true;
}
