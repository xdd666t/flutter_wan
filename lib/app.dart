import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wan/widget/page/find/page.dart';
import 'package:flutter_wan/widget/page/home/page.dart';
import 'package:flutter_wan/widget/page/main/page.dart';
import 'package:flutter_wan/widget/page/my/home/page.dart';
void main(){
  runApp(createApp());
}


Widget createApp(){
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      "main": MainPage(),
      //书架模块
      "bookshelf": HomePage(),//新闻主页面
      //发现模块
      "find": FindPage(),//发现模块主页面
      //我的模块
      "my": MyPage(),//我的模块主页面
    },
  );

  return MaterialApp(
    title: 'FishDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage("main", null),  //作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        UiAdapter(context);  //界面适配
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}


//界面适配
class UiAdapter {

  UiAdapter(BuildContext context){
    //填入设计稿中设备的屏幕尺寸
    //默认 width : 1080px , height:1920px , allowFontScaling:false
    ScreenUtil.init(context);
    //假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334)
    ScreenUtil.init(context, width: 750, height: 1334);
    //设置字体大小根据系统的“字体大小”辅助选项来进行缩放,默认为false
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
  }

}