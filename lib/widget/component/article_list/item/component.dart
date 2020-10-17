import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class ArticleItemComponent extends Component<ArticleItemState> {
  ArticleItemComponent()
      : super(
          effect: buildEffect(),
          view: buildView,
          dependencies: Dependencies<ArticleItemState>(
            adapter: null,
            slots: <String, Dependent<ArticleItemState>>{},
          ),
        );
}
