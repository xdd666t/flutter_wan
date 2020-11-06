import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//按照宽度适配
double setWidth(double size) {
  return ScreenUtil().setWidth(size);
}

//按照高度适配
double setHeight(double size) {
  return ScreenUtil().setHeight(size);
}

//适配文字
double setSp(double size) {
  if (isMobile()) {
    return ScreenUtil().setSp(size);
  } else {
    return size.toDouble();
  }
}

//自动适配,方便调整
double auto(double size) {
  if (isMobile()) {
    return ScreenUtil().setWidth(size);
  } else {
    return size.toDouble();
  }
}

//界面适配
void initUiAdapter(BuildContext context) {
  //填入设计稿中设备的屏幕尺寸
  //默认 width : 1080px , height:1920px , allowFontScaling:false
//    ScreenUtil.init(context);
  //假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334)
//    ScreenUtil.init(context, width: 750, height: 1334);
  //设置字体大小根据系统的“字体大小”辅助选项来进行缩放,默认为false
//    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
  if (!isMobile()) {
    return;
  }
  ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);
}


//判断是否是移动端平台
bool isMobile() {
  if (Platform.isAndroid || Platform.isIOS) {
    return true;
  } else {
    return false;
  }
}


extension dimensionsNum on num {
  ///自动适配移动界面
  num get dp => auto(this);

  ///配置文字,文字适配请用sp单位
  num get sp => setSp(this);
}
