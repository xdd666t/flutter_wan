import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class LoginPage extends Page<LoginState, Map<String, dynamic>> {
  LoginPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            view: buildView,
            dependencies: Dependencies<LoginState>(
                adapter: null,
                slots: <String, Dependent<LoginState>>{
                }),
            middleware: <Middleware<LoginState>>[
            ],);

}
