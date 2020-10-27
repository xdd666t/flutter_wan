import 'package:fish_redux/fish_redux.dart';

import 'collect_item/component.dart';
import 'state.dart';

class CollectAdapter extends SourceFlowAdapter<CollectState> {
  static const String collect_item = "collect_item";

  CollectAdapter()
      : super(
          pool: <String, Component<Object>>{
            collect_item: CollectItemComponent(),
          },
        );
}
