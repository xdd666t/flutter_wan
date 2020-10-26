import 'package:flutter/material.dart';
import 'package:flutter_wan/app/typedef/function.dart';
import 'package:flutter_wan/app/utils/ui/ui_adapter.dart';
import 'package:flutter_wan/bean/project/project_detail_bean.dart';

import '../state.dart';

class ProjectItemDetail extends StatelessWidget {
  ProjectItemDetail({
    this.data,
    this.onTap,
  });

  ///数据源
  final ProjectTabItemState data;

  ///回调点击数据
  final ParamSingleCallback<Datas> onTap;

  @override
  Widget build(BuildContext context) {
    return _projectItem();
  }

  ///重点 Widget One: item整体构造
  Widget _projectItem() {
    return _projectBg(
      child: Row(
        children: <Widget>[
          //左边图片
          _leftArea(),

          //右边的纵向布局
          Expanded(child: _rightArea()),
        ],
      ),
    );
  }

  ///重点 Widget Two: item右边区域
  Widget _rightArea() {
    return Container(
      margin: EdgeInsets.all(auto(20)),
      height: auto(350),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          //标题
          Expanded(
            flex: 1,
            child: _rightTitle(),
          ),

          //内容
          Expanded(
            flex: 5,
            child: _rightContent(),
          ),

          //作者,时间
          Expanded(
            flex: 2,
            child: _rightAuthorTime(),
          ),
        ],
      ),
    );
  }

  Widget _rightAuthorTime() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        //作者
        Row(
          children: <Widget>[
            Text("作者："),
            Expanded(
              child: Text(data.itemDetail.author,
                  style: TextStyle(color: Colors.blue)),
            )
          ],
        ),
        //时间
        Row(
          children: <Widget>[
            Text("时间："),
            Expanded(
              child: Text(
                data.itemDetail.niceDate,
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _rightContent() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        data.itemDetail.desc,
        style: TextStyle(fontSize: setSp(28)),
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _rightTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: auto(350),
          child: Text(
            data.itemDetail.title,
            style: TextStyle(fontSize: setSp(34)),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        //显示收藏
        Icon(
          Icons.favorite,
          color:
              data.itemDetail.collect ? Colors.deepOrangeAccent : Colors.grey,
        ),
      ],
    );
  }

  Widget _leftArea() {
    return Container(
      margin: EdgeInsets.all(auto(20)),
      width: auto(180),
      height: auto(350),
      child: Image.network(
        data.itemDetail.envelopePic,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _projectBg({Widget child}) {
    return Container(
      margin: EdgeInsets.only(top: auto(15), left: auto(10), right: auto(10)),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(auto(20))),
        child: InkWell(
          borderRadius: BorderRadius.circular(auto(20)),
          onTap: () {
            onTap(data.itemDetail);
          },
          child: child,
        ),
      ),
    );
  }
}
