import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';

class TreeDetailPage extends Page<TreeDetailState, Map<String, dynamic>> {
  TreeDetailPage()
      : super(
          initState: initState,
          view: buildView,
          dependencies: Dependencies<TreeDetailState>(
              adapter: null, slots: <String, Dependent<TreeDetailState>>{}),
          middleware: <Middleware<TreeDetailState>>[],
        );
}
