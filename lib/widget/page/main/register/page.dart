import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class RegisterPage extends Page<RegisterState, Map<String, dynamic>> {
  RegisterPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<RegisterState>(
                adapter: null,
                slots: <String, Dependent<RegisterState>>{
                }),
            middleware: <Middleware<RegisterState>>[
            ],);

}
