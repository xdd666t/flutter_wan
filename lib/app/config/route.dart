import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/module/home/page.dart';
import 'package:flutter_wan/module/main/collect/page.dart';
import 'package:flutter_wan/module/main/login/page.dart';
import 'package:flutter_wan/module/main/page.dart';
import 'package:flutter_wan/module/main/register/page.dart';
import 'package:flutter_wan/module/main/search/page.dart';
import 'package:flutter_wan/module/navi/page.dart';
import 'package:flutter_wan/module/project/page.dart';
import 'package:flutter_wan/module/tree/page.dart';
import 'package:flutter_wan/module/tree/tree_detail/page.dart';
import 'package:flutter_wan/module/web/page.dart';

///路由管理
class RouteConfig {
  ///定义你的路由名称比如   static final String routeHome = 'page/home';
  ///主模块
  static const String mainPage = 'page/main';

  ///登录
  static const String loginPage = 'page/main/login';

  ///注册
  static const String registerPage = 'page/main/login/register';

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

  ///收藏主页
  static const String collectPage = 'page/main/collect';

  ///搜索页面
  static const String searchPage = 'page/main/search';

  ///将你的路由名称和页面映射在一起，比如：RouteConfig.homePage: HomePage(),
  static final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      RouteConfig.mainPage: MainPage(),
      RouteConfig.homePage: HomePage(),
      RouteConfig.treePage: TreePage(),
      RouteConfig.treeDetailPage: TreeDetailPage(),
      RouteConfig.naviPage: NaviPage(),
      RouteConfig.projectPage: ProjectPage(),
      RouteConfig.webViewPage: WebViewPage(),
      RouteConfig.loginPage: LoginPage(),
      RouteConfig.registerPage: RegisterPage(),
      RouteConfig.collectPage: CollectPage(),
      RouteConfig.searchPage: SearchPage(),
    },
  );
}
