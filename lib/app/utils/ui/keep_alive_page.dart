import 'package:flutter/cupertino.dart';

//页面保活方法
Widget keepAlivePage(Widget child) => AliveWidget(child: child);

class AliveWidget extends StatefulWidget {
  final Widget child;

  AliveWidget({this.child});

  @override
  State<StatefulWidget> createState() {
    return _KeepAliveState();
  }
}

class _KeepAliveState extends State<AliveWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}
