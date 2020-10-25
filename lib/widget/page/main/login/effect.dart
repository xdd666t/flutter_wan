import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';
import 'package:flutter_wan/app/utils/cache/sp_util.dart';
import 'package:flutter_wan/app/utils/show/toast_util.dart';
import 'package:flutter_wan/app/utils/tool/string_util.dart';
import 'package:flutter_wan/bean/user/login_info_bean.dart';
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

void _onLogin(Action action, Context<LoginState> ctx) async {
  if (!_isAccess(ctx)) {
    return;
  }
  //登录操作
  var data = {
    'username': ctx.state.userName,
    // 'username': 'xdd613',
    'password': ctx.state.password,
    // 'password': '1q2w3e4r',
  };
  var result = await Dio().post(ApiUrl.LOGIN, queryParameters: data);
  var loginInfo = LoginInfoBean.fromJson(json.decode(result.toString()));
  if (loginInfo.errorCode == 0) {
    showToast("登录成功");
    _saveUserInfo(ctx.state);
    Navigator.pop(ctx.context, true);
  }else{
    showToast(loginInfo.errorMsg);
  }
}

//保存用户信息
void _saveUserInfo(LoginState state) async{
  SpUtil.put('userName', state.userName);
  SpUtil.put('password', state.password);
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
