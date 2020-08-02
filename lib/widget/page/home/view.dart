import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/material_footer.dart';
import 'package:flutter_easyrefresh/material_header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_wan/widget/utils/keep_alive_page.dart';
import 'package:flutter_wan/widget/utils/ui_adapter.dart';

import 'action.dart';
import 'state.dart';

HomeState _homeState;
Dispatch _dispatch;
ViewService _viewService;

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  _homeState = state;
  _dispatch = dispatch;
  _viewService = viewService;
  _homeState.articleIndex = 0;
  ScreenUtil.init(viewService.context, width: 750, height: 1334);

  return keepAliveWrapper(Scaffold(
    body: _homeWidget()
  ));
}


//首页widget组装
Widget _homeWidget(){
  EasyRefreshController _controller = EasyRefreshController();
  return EasyRefresh(
    controller: _controller,
    header: MaterialHeader(),
    footer: MaterialFooter(),
    child: ListView(
      children: <Widget>[
        _swiperView(), //banner控件
        _articleWidget(), //文章控件
      ]
    ),
    firstRefresh: true,
    //下拉刷新
    onRefresh: () async{
      _homeState.articleIndex = 0;
      _dispatch(HomeActionCreator.loadMoreArticle(_homeState.articleIndex));
//      _controller.finishRefresh(success: true, noMore: false);
    },
    //上拉加载
    onLoad: () async{
      _homeState.articleIndex += 1 ;
      _dispatch(HomeActionCreator.loadMoreArticle(_homeState.articleIndex));

      await Future.delayed(Duration(seconds: 2), () {
        _controller.finishLoad(success: true, noMore: false);
      });
    },
  );
}


//////顶部轮播图
Widget _swiperView(){
  return Container(
    height: setHeight(400),
    child: Stack(
      children: <Widget>[
        _bannerImage(),
        _bannerText(),
      ],
    )
  );
}
//顶部banner图片显示
Widget _bannerImage(){
  return Swiper(
    itemCount: _homeState.bannerImages.length,
    itemBuilder:  (BuildContext context, int index) {
      _dispatch(HomeActionCreator.updateBannerIndex(index)); //更新当前被选中的index
      return _homeState.bannerImages[index];
    },
    autoplay: _homeState.bannerImages.length != 0,
    autoplayDelay: 5000, //自动播放时间间隔
    //圆点指示器
    pagination: SwiperPagination(
      alignment: Alignment.bottomRight,
      margin: EdgeInsets.only(bottom: setWidth(100), right: setWidth(15)),
      builder: DotSwiperPaginationBuilder(size: setWidth(12), activeSize: setWidth(12))
    ),
    onTap: (index){
      _dispatch(HomeActionCreator.openBannerContent(index));
    },
  );
}
//顶部banner文字显示
Widget _bannerText(){
  return Offstage(
    offstage: _homeState.banners.length == 0,
    child: Container(
      alignment: Alignment.bottomCenter,
      child: Container(
          height: setWidth(80),
          width: double.infinity,
          padding: EdgeInsets.all(5.0),
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
          child: Center(
            child: Text(
              _homeState.banners.length == 0 ? "" : _homeState.banners[_homeState.bannerIndex].title,
              style: TextStyle(color: Colors.white, fontSize: setSp(30)),
            ),
          )
      ),
    ),
  );
}


////////////////文章组件
Widget _articleWidget(){
  return MediaQuery.removePadding(
    removeTop: true,
    context: _viewService.context,
    child: ListView.builder(
      shrinkWrap: true, //为true可以解决子控件必须设置高度的问题
      physics:NeverScrollableScrollPhysics(),//禁用滑动事件
      itemBuilder: _viewService.buildAdapter().itemBuilder,
      itemCount: _viewService.buildAdapter().itemCount,
    )
  );
}

