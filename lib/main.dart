import 'package:flutter/cupertino.dart' hide Page;
import 'package:flutter/material.dart' hide Page;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_wan/app/init.dart';

import 'app/config/route.dart';

void main() {
  runApp(createApp());
}

Widget createApp() {
  return MyApp();
}


class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    initApp(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '玩android',
      localizationsDelegates: [
        //国际化
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: RouteConfig.routes.buildPage(RouteConfig.mainPage, null), //作为默认页面
      onGenerateRoute: (RouteSettings settings) {
        //ios页面切换风格
        return CupertinoPageRoute(builder: (BuildContext context) {
          return RouteConfig.routes.buildPage(settings.name, settings.arguments);
        });
      },
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
