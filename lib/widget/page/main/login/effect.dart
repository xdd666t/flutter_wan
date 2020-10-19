import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_wan/app/config/route.dart';

import 'action.dart';
import 'state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.onLogin: _onLogin,
  });
}

void _onLogin(Action action, Context<LoginState> ctx) {
  ///登录操作
  Navigator.pushNamed(ctx.context, RouteConfig.registerPage);
}
