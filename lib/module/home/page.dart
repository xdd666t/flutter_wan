import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/view/component/article_list/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomePage extends Page<HomeState, Map<String, dynamic>> {
  HomePage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<HomeState>(
              adapter: null,
              slots: <String, Dependent<HomeState>>{
                "ArticleList": ArticleConnector() + ArticleListComponent(),
              }),
          middleware: <Middleware<HomeState>>[],
        );
}
