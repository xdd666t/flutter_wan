
import 'package:flutter_screenutil/flutter_screenutil.dart';


//按照宽度适配
num setWidth(num size){
  return ScreenUtil().setWidth(size);
}

//按照高度适配
num setHeight(num size){
  return ScreenUtil().setHeight(size);
}

//适配文字
num setSp(num size){
  return ScreenUtil().setSp(size);
}