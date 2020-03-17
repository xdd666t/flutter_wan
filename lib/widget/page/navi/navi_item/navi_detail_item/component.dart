import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NaviDetailItemComponent extends Component<NaviDetailItemState> {
  NaviDetailItemComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NaviDetailItemState>(
                adapter: null,
                slots: <String, Dependent<NaviDetailItemState>>{
                }),);

}
