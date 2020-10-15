import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/home/home_article_item/state.dart';

import 'effect.dart';
import 'view.dart';

class HomeArticleItemComponent extends Component<HomeArticleItemState> {
  HomeArticleItemComponent()
      : super(
          effect: buildEffect(),
          view: buildView,
          dependencies: Dependencies<HomeArticleItemState>(
              adapter: null,
              slots: <String, Dependent<HomeArticleItemState>>{}),
        );
}
