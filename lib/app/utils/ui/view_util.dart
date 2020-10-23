import 'dart:async';

import 'package:flutter/cupertino.dart';

class ViewUtil {
  ///界面初始化完成好的
  static Future<void> initFinish() async {
    Completer completer = new Completer();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      completer.complete();
    });

    return completer.future;
  }
}
