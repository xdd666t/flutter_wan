import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ProjectTabItemComponent extends Component<ProjectTabItemState> {
  ProjectTabItemComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ProjectTabItemState>(
                adapter: null,
                slots: <String, Dependent<ProjectTabItemState>>{
                }),);

}
