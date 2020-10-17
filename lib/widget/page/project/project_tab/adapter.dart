import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/widget/page/project/project_tab/state.dart';
import 'package:flutter_wan/widget/page/project/project_tab_item/component.dart';

class ProjectTabAdapter extends SourceFlowAdapter<ProjectTabState> {
  static const String project_tab_item = "project_tab_item";

  ProjectTabAdapter()
      : super(
          pool: <String, Component<Object>>{
            project_tab_item: ProjectTabItemComponent()
          },
        );
}
