import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/page/project/project_tab/page.dart';

import 'state.dart';

Widget buildView(
    ProjectState state, Dispatch dispatch, ViewService viewService) {
  if (state.projectBean != null) {
    return ProjectView(data: state);
  } else {
    return Center(child: CircularProgressIndicator());
  }
}

///为了清晰展示TabController初始化,就不单独提取成Widget放在新文件里了
class _ProjectViewState extends State<ProjectView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    //演示:初始化自定义的TabBar控制器
    widget.data.tabController = TabController(
      vsync: this,
      length: widget.data.projectBean.data.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Tab标题
        buildTitle(),

        //Tab内容
        Expanded(child: buildContent())
      ],
    );
  }

  TabBarView buildContent() {
    return TabBarView(
        controller: widget.data.tabController,
        children: widget.data.projectBean.data.asMap().keys.map((index) {
          return ProjectTabPage().buildPage(
            {"id": widget.data.projectBean.data[index].id},
          );
        }).toList());
  }

  Container buildTitle() {
    return Container(
      color: Colors.blue,
      child: TabBar(
        controller: widget.data.tabController,
        tabs: widget.data.tabList,
        isScrollable: true,
      ),
    );
  }
}

class ProjectView extends StatefulWidget {
  ProjectView({this.data});

  final ProjectState data;

  @override
  _ProjectViewState createState() => _ProjectViewState();
}
