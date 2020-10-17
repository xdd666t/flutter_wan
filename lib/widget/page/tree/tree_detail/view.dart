import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/page/tree/tree_detail/tree_detail_tab/page.dart';

import 'state.dart';

Widget buildView(
    TreeDetailState state, Dispatch dispatch, ViewService viewService) {
  return TreeDetailView(data: state);
}

///fish_redux初始化自定义TabBar控制器
class _TreeDetailViewState extends State<TreeDetailView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    //演示初始化自定义的TabBar控制器
    widget.data.tabController = TabController(
      vsync: this,
      length: widget.data.topList.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data.treeInfoData.name),
        bottom: TabBar(
          controller: widget.data.tabController,
          tabs: widget.data.topList,
          isScrollable: widget.data.topList.length < 5 ? false : true,
        ),
      ),
      body: TabBarView(
          controller: widget.data.tabController,
          children: widget.data.topList.asMap().keys.map((int index) {
            return TreeDetailTabPage().buildPage({
              "id": widget.data.treeInfoData.children[index].id.toString(),
            });
          }).toList()),
    );
  }
}

class TreeDetailView extends StatefulWidget {
  TreeDetailView({this.data});

  final TreeDetailState data;

  @override
  _TreeDetailViewState createState() => _TreeDetailViewState();
}
