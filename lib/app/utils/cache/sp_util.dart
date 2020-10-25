import 'package:shared_preferences/shared_preferences.dart';

class SpUtil {
  static SharedPreferences _instance;

  ///使用前必须初始化
  static void init() async {
    _instance = await SharedPreferences.getInstance();
  }

  /// 保存数据
  static void put<T>(String key, T value) async{
    SharedPreferences instance = await SharedPreferences.getInstance();

    switch (T) {
      case String:
        instance.setString(key, value as String);
        break;
      case int:
        instance.setInt(key, value as int);
        break;
      case bool:
        instance.setBool(key, value as bool);
        break;
      case double:
        instance.setDouble(key, value as double);
        break;
    }
  }

  /// 读取数据
  static Future<T> get<T>(String key) async {
    SharedPreferences instance = await SharedPreferences.getInstance();

    T res;
    switch (T) {
      case String:
        res = instance.getString(key) as T;
        break;
      case int:
        res = instance.getInt(key) as T;
        break;
      case bool:
        res = instance.getBool(key) as T;
        break;
      case double:
        res = instance.getDouble(key) as T;
        break;
    }
    return res;
  }
}
