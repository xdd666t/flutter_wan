import 'package:fish_redux/fish_redux.dart';

import 'adapter.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ProjectTabPage extends Page<ProjectTabState, Map<String, dynamic>> {
  ProjectTabPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ProjectTabState>(
              adapter: NoneConn<ProjectTabState>() + ProjectTabAdapter(),
              slots: <String, Dependent<ProjectTabState>>{}),
          middleware: <Middleware<ProjectTabState>>[],
        );
}
