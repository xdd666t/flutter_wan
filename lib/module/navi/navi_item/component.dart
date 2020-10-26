import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class NaviItemComponent extends Component<NaviItemState> {
  NaviItemComponent()
      : super(
          effect: buildEffect(),
          view: buildView,
          dependencies: Dependencies<NaviItemState>(
            adapter: null,
            slots: <String, Dependent<NaviItemState>>{},
          ),
        );
}
