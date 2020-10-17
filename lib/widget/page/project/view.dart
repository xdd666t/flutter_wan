import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/page/project/project_tab/page.dart';

import 'state.dart';

Widget buildView(
    ProjectState state, Dispatch dispatch, ViewService viewService) {
  if (state.projectBean != null) {
    return _tabWidget(state);
  } else {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class TreeDetailView extends StatefulWidget {
  TreeDetailView({
    this.data,
  });

  final ProjectState data;

  @override
  _TreeDetailViewState createState() => _TreeDetailViewState();
}

class _TreeDetailViewState extends State<TreeDetailView> {
  @override
  void initState() {
    super.initState();

    //初始化tabView控制器
    //在此演示，在fish_redux中初始化自定义的TabBar控制器
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget _tabWidget(ProjectState state) {
  return DefaultTabController(
    length: state.projectBean.data.length,
    initialIndex: 0,
    child: Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            //Tab标题
            child: TabBar(
              tabs: state.tabList,
              isScrollable: true,
            ),
          ),

          //Tab内容
          Expanded(
            child: TabBarView(
                children: state.projectBean.data.asMap().keys.map((index) {
              return ProjectTabPage()
                  .buildPage({"id": state.projectBean.data[index].id});
            }).toList()),
          )
        ],
      ),
    ),
  );
}
