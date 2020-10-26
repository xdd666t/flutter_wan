import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/view/component/article_list/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TreeDetailTabPage extends Page<TreeDetailTabState, Map<String, dynamic>> {
  TreeDetailTabPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<TreeDetailTabState>(
              adapter: null,
              slots: <String, Dependent<TreeDetailTabState>>{
                "ArticleList": ArticleConnector() + ArticleListComponent(),
              }),
          middleware: <Middleware<TreeDetailTabState>>[],
        );
}
