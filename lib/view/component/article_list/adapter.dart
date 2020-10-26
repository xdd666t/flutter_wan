import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'item/component.dart';
import 'reducer.dart';
import 'state.dart';

class ArticleListAdapter extends SourceFlowAdapter<ArticleListState> {
  static const String articleType = "articleType";

  ArticleListAdapter()
      : super(
          pool: <String, Component<Object>>{
            articleType: ArticleItemComponent(),
          },
          reducer: buildReducer(),
          effect: buildEffect(),
        );
}
