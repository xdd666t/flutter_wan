import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/tree/tree_detail/tree_detail_tab/adapter.dart';

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
                adapter: NoneConn<TreeDetailTabState>() + TreeDetailTabAdapter(),
                slots: <String, Dependent<TreeDetailTabState>>{

                }),
            middleware: <Middleware<TreeDetailTabState>>[
            ],);

}
