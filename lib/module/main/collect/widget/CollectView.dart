import 'package:flutter/material.dart';
import 'package:flutter_wan/app/utils/ui/ui_adapter.dart';
import 'package:flutter_wan/view/widget/search/search_bar.dart';

class CollectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _collect();
  }

  Widget _collect(){
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(auto(20)),
      child: SearchBar(),
    );
  }
}
