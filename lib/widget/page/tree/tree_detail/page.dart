import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TreeDetailPage extends Page<TreeDetailState, Map<String, dynamic>> {
  TreeDetailPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<TreeDetailState>(
                adapter: null,
                slots: <String, Dependent<TreeDetailState>>{
                }),
            middleware: <Middleware<TreeDetailState>>[
            ],);

}
