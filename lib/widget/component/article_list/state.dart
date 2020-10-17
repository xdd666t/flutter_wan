import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_wan/widget/page/home/adapter.dart';

class ArticleListState extends MutableSource
    implements Cloneable<ArticleListState> {
  //文章列表索引  处理分页逻辑
  int articleIndex;

  //item数据源
  List<Object> articleList;

  //刷新控制器
  EasyRefreshController easyRefreshController = EasyRefreshController();

  ArticleListState({
    this.articleIndex = 0,
    this.articleList = const [],
  });

  @override
  ArticleListState clone() {
    return ArticleListState()
      ..articleIndex = articleIndex
      ..articleList = articleList
      ..easyRefreshController = easyRefreshController;
  }

  @override
  Object getItemData(int index) => articleList[index];

  @override
  String getItemType(int index) => HomeArticleAdapter.articleType;

  @override
  int get itemCount => articleList.length ?? 0;

  @override
  void setItemData(int index, Object data) => articleList[index] = data;
}
