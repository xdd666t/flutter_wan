import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class TreeItemComponent extends Component<TreeItemState> {
  TreeItemComponent()
      : super(
          effect: buildEffect(),
          view: buildView,
          dependencies: Dependencies<TreeItemState>(
              adapter: null, slots: <String, Dependent<TreeItemState>>{}),
        );
}
