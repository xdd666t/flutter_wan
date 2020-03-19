import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wan/widget/page/project/project_tab/page.dart';
import 'package:flutter_wan/widget/utils/keep_alive_page.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ProjectState state, Dispatch dispatch, ViewService viewService) {
  if(state.projectBean != null) {
    return keepAliveWrapper(_tabWidget(state));
  }else{
    return Center(child: CircularProgressIndicator(),);
  }
}

Widget _tabWidget(ProjectState state){
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
                  children: state.projectBean.data.asMap().keys.map((index){
                    return ProjectTabPage().buildPage({"id": state.projectBean.data[index].id} );
                  }).toList()
              ),
            )
          ],
        )
      )
  );
}
