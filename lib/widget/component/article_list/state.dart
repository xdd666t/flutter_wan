import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

import 'adapter.dart';

class ArticleListState extends MutableSource
    implements Cloneable<ArticleListState> {
  //文章列表索引  处理分页逻辑
  int articleIndex;

  //item数据源
  List<Object> articleList;

  //获取文章id
  int articleId;

  //刷新控制器
  EasyRefreshController easyRefreshController = EasyRefreshController();

  ///引用该组件类别
  /// 0:首页  1:知识体系
  int type;

  ArticleListState({
    this.articleId,
    this.articleIndex = 0,
    this.articleList = const [],
    this.type = 0,
  });

  @override
  ArticleListState clone() {
    return ArticleListState()
      ..type = type
      ..articleId = articleId
      ..articleIndex = articleIndex
      ..articleList = articleList
      ..easyRefreshController = easyRefreshController;
  }

  @override
  Object getItemData(int index) => articleList[index];

  @override
  String getItemType(int index) => ArticleListAdapter.articleType;

  @override
  int get itemCount => articleList.length ?? 0;

  @override
  void setItemData(int index, Object data) => articleList[index] = data;
}
