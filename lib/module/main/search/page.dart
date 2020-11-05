import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/view/component/article_list/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SearchPage extends Page<SearchState, Map<String, dynamic>> {
  SearchPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SearchState>(
                adapter: null,
                slots: <String, Dependent<SearchState>>{
                  "ArticleList": SearchArticleConnector() + ArticleListComponent(),
                }),
            middleware: <Middleware<SearchState>>[
            ],);

}
