import 'package:flutter/cupertino.dart' hide Page;
import 'package:flutter/material.dart' hide Page;

import 'app/config/route.dart';

void main() {
  runApp(createApp());
}

Widget createApp() {
  return MaterialApp(
    title: '玩android',
    home: RouteConfig.routes.buildPage(RouteConfig.mainPage, null), //作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      //ios页面切换风格
      return CupertinoPageRoute(builder: (BuildContext context) {
        return RouteConfig.routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
