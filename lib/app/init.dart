//初始化一些必须的操作
import 'package:flutter/cupertino.dart';
import 'package:flutter_wan/app/utils/cache/sp_util.dart';

void initApp(BuildContext context) {
  //初始化本地缓存
  SpUtil.init();
}
