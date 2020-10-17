import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class TreeTabItemComponent extends Component<TreeTabItemState> {
  TreeTabItemComponent()
      : super(
          effect: buildEffect(),
          view: buildView,
          dependencies: Dependencies<TreeTabItemState>(
              adapter: null, slots: <String, Dependent<TreeTabItemState>>{}),
        );
}
