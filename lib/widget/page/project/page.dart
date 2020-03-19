import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ProjectPage extends Page<ProjectState, Map<String, dynamic>> {
  ProjectPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ProjectState>(
                adapter: null,
                slots: <String, Dependent<ProjectState>>{
                }),
            middleware: <Middleware<ProjectState>>[
            ],);

}
