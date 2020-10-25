import 'package:dio/dio.dart';
import 'package:flutter_wan/app/utils/cache/sp_util.dart';

///获取dio设置
Future<Options> getOptions() async {
  String userName = await SpUtil.get('userName');
  String password = await SpUtil.get('password');

  if (userName == null) {
    return null;
  }

  Map<String, dynamic> headers = Map();
  String cookie ="loginUserName=$userName;loginUserPassword=$password";
  headers['Cookie'] = cookie;
  Options options = Options(headers: headers);

  return options;
}
