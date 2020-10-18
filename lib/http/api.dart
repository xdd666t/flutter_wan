class ApiUrl {
  static const String BASE_URL = "https://www.wanandroid.com";

  //获取轮播信息 首页Banner
  static const String GET_BANNER_URL = "$BASE_URL/banner/json";

  //获取轮播信息 首页文章
  static const String GET_HOME_ARTICLE = "$BASE_URL/article/list/";

  // 获取体系数据
  static const String GET_TREE = "$BASE_URL/tree/json";

  //体系文章详情
  static const String GET_TREE_DETAIL = "$BASE_URL/article/list/0/json";

  //获取导航数据
  static const String GET_NAVI_INFO = "$BASE_URL/navi/json";

  //获取项目数据
  static const String GET_PROJECT_INFO = "$BASE_URL/project/tree/json";
  static const String GET_PROJECT_DETAIL = "$BASE_URL/project/list/1/json";
}
