import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter_wan/app/utils/show/toast_util.dart';
import 'package:flutter_wan/app/utils/tool/string_util.dart';
import 'package:flutter_wan/bean/user/register_info_bean.dart';
import 'package:flutter_wan/http/api.dart';

import 'action.dart';
import 'state.dart';

Effect<RegisterState> buildEffect() {
  return combineEffects(<Object, Effect<RegisterState>>{
    //注册
    RegisterAction.onRegister: _onRegister,
  });
}

void _onRegister(Action action, Context<RegisterState> ctx) async {
  RegisterState state = ctx.state;
  if (!_isAccess(state)) {
    return;
  }

  var query = {
    'username': state.userName,
    'password': state.password,
    'repassword': state.rePassword,
  };
  var result = await Dio().post(ApiUrl.REGISTER, queryParameters: query);
  RegisterInfoBean bean =
      RegisterInfoBean.fromJson(json.decode(result.toString()));
  print(bean.toJson());

  if (bean.errorCode == 0) {
    showToast("注册成功");
    Navigator.pop(ctx.context);
  } else {
    showToast(bean.errorMsg);
  }
}

bool _isAccess(RegisterState state) {
  if (StringUtil.isEmpty(state.userName)) {
    showToast('请输入用户名');
    return false;
  }

  if (StringUtil.isEmpty(state.userName)) {
    showToast('请输入密码');
    return false;
  }

  if (StringUtil.isEmpty(state.userName)) {
    showToast('请输入确认密码');
    return false;
  }

  return true;
}
