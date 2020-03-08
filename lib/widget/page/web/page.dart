import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

//展示内容，统一用ArticleWebView展示
class WebViewPage extends Page<WebViewState, Map<String, dynamic>> {
  WebViewPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<WebViewState>(
                adapter: null,
                slots: <String, Dependent<WebViewState>>{
                }),
            middleware: <Middleware<WebViewState>>[
            ],);

}
