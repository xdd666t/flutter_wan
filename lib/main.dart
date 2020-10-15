import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Page;
import 'package:flutter/material.dart' hide Page;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wan/widget/page/home/page.dart';
import 'package:flutter_wan/widget/page/main/page.dart';
import 'package:flutter_wan/widget/page/navi/page.dart';
import 'package:flutter_wan/widget/page/project/page.dart';
import 'package:flutter_wan/widget/page/tree/page.dart';
import 'package:flutter_wan/widget/page/tree/tree_detail/page.dart';
import 'package:flutter_wan/widget/page/web/page.dart';

import 'app/config/route.dart';

void main() {
  runApp(createApp());
}

Widget createApp() {

  return MaterialApp(
    title: '玩android',
    home: RouteConfig.routes.buildPage(RouteConfig.mainPage, null), //作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      //切换页面效果设置

// //     ios页面切换风格
//       return CupertinoPageRoute(builder: (BuildContext context) {
//         return RouteConfig.routes.buildPage(settings.name, settings.arguments);
//       });

     //Material页面切换风格
     return MaterialPageRoute<Object>(builder: (BuildContext context) {
       return RouteConfig.routes.buildPage(settings.name, settings.arguments);
     });
    },
  );
}


