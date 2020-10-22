import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ViewUtil {
  static Future initFinish<T>() async {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp)  {
      print(timeStamp);
    });

    Future.delayed(Duration(seconds: 1));


    await Future.any("");
}



