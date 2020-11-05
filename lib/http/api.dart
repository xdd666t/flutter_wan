class ApiUrl {
  static const String _BASE_URL = "https://www.wanandroid.com";

  ///获取轮播信息 首页Banner
  static const String GET_BANNER_URL = "$_BASE_URL/banner/json";

  ///获取轮播信息 首页文章
  static const String GET_HOME_ARTICLE = "$_BASE_URL/article/list/";

  /// 获取体系数据
  static const String GET_TREE = "$_BASE_URL/tree/json";

  ///体系文章详情
  static const String GET_TREE_DETAIL = "$_BASE_URL/article/list/0/json";

  ///获取导航数据
  static const String GET_NAVI_INFO = "$_BASE_URL/navi/json";

  ///获取项目数据
  static const String GET_PROJECT_INFO = "$_BASE_URL/project/tree/json";
  static const String GET_PROJECT_DETAIL = "$_BASE_URL/project/list/1/json";

  ///登录
  static const String LOGIN = "$_BASE_URL/user/login";

  ///注册
  static const String REGISTER = "$_BASE_URL/user/register";

  ///收藏文章列表
  static const String COLLECT_ARTICLE_LIST = "$_BASE_URL/lg/collect/list/";

  ///收藏文章
  static const String COLLECT = "$_BASE_URL/lg/collect/";

  ///取消收藏文章
  static const String CANCEL_COLLECT = "$_BASE_URL/lg/uncollect_originId/";

  ///搜索热词
  static const String SEARCH_HOT_WORD = "$_BASE_URL/hotkey/json";

  ///搜索
  static const String SEARCH = "$_BASE_URL/article/query/";
}
