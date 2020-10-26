import 'package:fish_redux/fish_redux.dart';

import 'adapter.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NaviPage extends Page<NaviState, Map<String, dynamic>> {
  NaviPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<NaviState>(
              adapter: NoneConn<NaviState>() + NaviAdapter(),
              slots: <String, Dependent<NaviState>>{}),
          middleware: <Middleware<NaviState>>[],
        );
}
