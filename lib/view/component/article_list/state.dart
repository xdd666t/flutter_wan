import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

import 'adapter.dart';

class ArticleListState extends MutableSource
    implements Cloneable<ArticleListState> {
  ///文章列表索引  处理分页逻辑
  int articleIndex;

  ///item数据源
  List<Object> items;

  ///获取文章id
  int articleId;

  ///第一次是否加载
  bool firstRefresh;

  ///搜索内容
  String searchMsg;

  ///刷新控制器
  EasyRefreshController controller = EasyRefreshController();

  ///引用该组件类别
  /// 0:首页  1:知识体系  2:搜索
  int type;

  ArticleListState({
    this.articleId,
    this.firstRefresh = true,
    this.searchMsg,
    this.articleIndex = 0,
    this.items = const [],
    this.type = 0,
  });

  @override
  ArticleListState clone() {
    return ArticleListState()
      ..type = type
      ..firstRefresh = firstRefresh
      ..searchMsg = searchMsg
      ..articleId = articleId
      ..articleIndex = articleIndex
      ..items = items
      ..controller = controller;
  }

  @override
  Object getItemData(int index) => items[index];

  @override
  String getItemType(int index) => ArticleListAdapter.articleType;

  @override
  int get itemCount => items.length ?? 0;

  @override
  void setItemData(int index, Object data) => items[index] = data;
}
