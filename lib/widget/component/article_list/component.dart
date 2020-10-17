import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/component/article_list/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ArticleListComponent extends Component<ArticleListState> {
  ArticleListComponent()
      : super(
          effect: buildEffect(),
          view: buildView,
          reducer: buildReducer(),
          dependencies: Dependencies<ArticleListState>(
            adapter: NoneConn<ArticleListState>() + ArticleListAdapter(),
            slots: <String, Dependent<ArticleListState>>{},
          ),
        );
}
