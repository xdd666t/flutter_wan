import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class CollectItemComponent extends Component<CollectItemState> {
  CollectItemComponent()
      : super(
            effect: buildEffect(),
            view: buildView,
            dependencies: Dependencies<CollectItemState>(
                adapter: null,
                slots: <String, Dependent<CollectItemState>>{
                }),);

}
