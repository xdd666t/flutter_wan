import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/home/home_article_item/component.dart';
import 'package:flutter_wan/widget/page/home/state.dart';

class HomeArticleAdapter extends SourceFlowAdapter<HomeState> {
  static const String articleType = "articleType";

  HomeArticleAdapter()
      : super(
    pool: <String, Component<Object>>{
      articleType: HomeArticleItemComponent(),
    },
  );
}