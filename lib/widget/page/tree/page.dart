import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/tree/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TreePage extends Page<TreeState, Map<String, dynamic>> {
  TreePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<TreeState>(
                adapter: NoneConn<TreeState>() + TreeAdapter(),
                slots: <String, Dependent<TreeState>>{
                }),
            middleware: <Middleware<TreeState>>[
            ],);

}
