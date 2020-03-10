import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wan/widget/page/home/page.dart';
import 'package:flutter_wan/widget/page/main/page.dart';
import 'package:flutter_wan/widget/page/my/page.dart';
import 'package:flutter_wan/widget/page/tree/page.dart';
import 'package:flutter_wan/widget/page/web/page.dart';
void main(){
  runApp(createApp());
}


Widget createApp(){
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      "main": MainPage(),
      //书架模块
      "home": HomePage(),//新闻主页面
      //发现模块
      "tree": TreePage(),//知识体系主页面
      //我的模块
      "my": MyPage(),//我的模块主页面
      //展示文章内容，统一的容器
      "webview": WebViewPage(),
    },
  );

  return MaterialApp(
    title: 'FishDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage("main", null),  //作为默认页面
    onGenerateRoute: (RouteSettings settings) {  //切换页面效果设置

//     ios页面切换风格
      return CupertinoPageRoute(builder: (BuildContext context){
        return routes.buildPage(settings.name, settings.arguments);
      });

//      Material页面切换风格
//      return MaterialPageRoute<Object>(builder: (BuildContext context) {
//        uiAdapter(context);  //界面适配
//        return routes.buildPage(settings.name, settings.arguments);
//      });

    },
  );
}


//界面适配
void uiAdapter(BuildContext context) {
    //填入设计稿中设备的屏幕尺寸
    //默认 width : 1080px , height:1920px , allowFontScaling:false
//    ScreenUtil.init(context);
    //假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334)
//    ScreenUtil.init(context, width: 750, height: 1334);
    //设置字体大小根据系统的“字体大小”辅助选项来进行缩放,默认为false
//    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);

  ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
}