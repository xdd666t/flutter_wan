import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/home/page.dart';
import 'package:flutter_wan/widget/page/main/page.dart';
import 'package:flutter_wan/widget/page/navi/page.dart';
import 'package:flutter_wan/widget/page/project/page.dart';
import 'package:flutter_wan/widget/page/tree/page.dart';
import 'package:flutter_wan/widget/page/tree/tree_detail/page.dart';
import 'package:flutter_wan/widget/page/web/page.dart';

///路由管理
class RouteConfig {
  ///定义你的路由名称比如   static final String routeHome = 'page/home';
  ///主模块
  static const String mainPage = 'page/main';

  ///新闻主页面
  static const String homePage = 'page/home';

  ///知识体系主页面
  static const String treePage = 'page/tree';

  ///知识体系细节
  static const String treeDetailPage = 'page/treeDetail';

  ///我的模块主页面
  static const String naviPage = 'page/navi';

  ///项目模块
  static const String projectPage = 'page/project';

  ///展示文章内容，统一的容器
  static const String webViewPage = 'page/webview';

  static final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      ///将你的路由名称和页面映射在一起，比如：RouteConfig.homePage : HomePage(),
      RouteConfig.mainPage: MainPage(),
      RouteConfig.homePage: HomePage(),
      RouteConfig.treePage: TreePage(),
      RouteConfig.treeDetailPage: TreeDetailPage(),
      RouteConfig.naviPage: NaviPage(),
      RouteConfig.projectPage: ProjectPage(),
      RouteConfig.webViewPage: WebViewPage(),
    },
  );
}
