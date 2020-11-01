import 'package:flutter/material.dart';
import 'package:flutter_wan/view/widget/search/search_bar.dart';

AppBar searchAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Container(
      child: SearchBar(),
    ),
  );
}
