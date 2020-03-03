import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/home/adapter/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomeArticleItemComponent extends Component<HomeArticleItemState> {
  HomeArticleItemComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HomeArticleItemState>(
                adapter: null,
                slots: <String, Dependent<HomeArticleItemState>>{
                }),);

}
