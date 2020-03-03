import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/home/adapter/home_article_item/component.dart';

import 'adapter/adapter.dart';
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
                adapter: NoneConn<HomeState>() + HomeArticleAdapter(),
                slots: <String, Dependent<HomeState>>{
//                  "HomeArticleItem": HomeArticleItemConnector() + HomeArticleItemComponent(),
                }),
            middleware: <Middleware<HomeState>>[
            ],);

}
