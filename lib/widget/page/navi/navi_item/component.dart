import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/navi/navi_item/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NaviItemComponent extends Component<NaviItemState> {
  NaviItemComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NaviItemState>(
                adapter: NoneConn<NaviItemState>() + NaviItemAdapter(),
                slots: <String, Dependent<NaviItemState>>{
                }),);

}
