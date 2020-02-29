import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/page/find/state.dart';

import 'action.dart';


Widget buildView(FindState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Center(
      child: Text("发现...."),
    ),
  );;
}
