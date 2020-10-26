import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_wan/app/typedef/function.dart';
import 'package:flutter_wan/app/utils/ui/ui_adapter.dart';

import '../state.dart';

class HomeBanner extends StatelessWidget {
  HomeBanner({
    this.data,
    this.onTap,
    this.onChanged,
  });

  ///数据源
  final HomeState data;

  ///滑动改变banner
  final ParamSingleCallback<int> onChanged;

  ///点中某个banner
  final ParamSingleCallback<int> onTap;

  @override
  Widget build(BuildContext context) {
    return _banner();
  }

  Widget _banner() {
    return Container(
      height: auto(370),
      child: Stack(
        children: <Widget>[
          //图片
          _bannerImage(),

          //显示文字
          _bannerText(),
        ],
      ),
    );
  }

//顶部banner图片显示
  Widget _bannerImage() {
    return Swiper(
      itemCount: data.bannerImages.length,
      itemBuilder: (BuildContext context, int index) {
        onChanged(index);
        return data.bannerImages[index];
      },
      autoplay: data.bannerImages.length != 0,
      autoplayDelay: 5000,
      //自动播放时间间隔
      //圆点指示器
      pagination: SwiperPagination(
        alignment: Alignment.bottomRight,
        margin: EdgeInsets.only(bottom: auto(100), right: auto(15)),
        builder: DotSwiperPaginationBuilder(
          size: auto(12),
          activeSize: auto(12),
        ),
      ),
      onTap: (index) {
        onTap(index);
      },
    );
  }

//顶部banner文字显示
  Widget _bannerText() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Offstage(
        offstage: data.banners.length == 0,
        child: Container(
          height: auto(80),
          padding: EdgeInsets.all(5.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.black.withAlpha(100),
                Colors.black.withAlpha(100),
              ],
            ),
          ),
          child: Text(
            data.banners.length == 0
                ? ""
                : data.banners[data.bannerIndex].title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              color: Colors.white,
              fontSize: setSp(30),
            ),
          ),
        ),
      ),
    );
  }
}
