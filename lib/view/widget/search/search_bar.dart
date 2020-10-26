import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_wan/app/typedef/function.dart';
import 'package:flutter_wan/app/utils/ui/ui_adapter.dart';
import 'package:flutter_wan/view/widget/input/input_actions.dart';

class SearchBar extends StatefulWidget {
  SearchBar({
    this.inputFormatters,
    this.hintText,
    this.keyboardType,
    this.autofocus,
    this.onChanged,
  });

  ///限制输入条件
  final List<TextInputFormatter> inputFormatters;

  ///提示
  final String hintText;

  ///唤起不同的键盘类型
  final TextInputType keyboardType;

  ///是否自动聚焦焦点
  final bool autofocus;

  final ParamSingleCallback<String> onChanged;

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar>
    with SingleTickerProviderStateMixin {
  FocusNode focusNode;
  TextEditingController inputController;

  ///动画
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    super.initState();

    focusNode = FocusNode();
    inputController = TextEditingController();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    animation = Tween(begin: 0.0, end: 1.0)
        .chain(CurveTween(curve: Curves.easeIn))
        .animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return _buildSearchBody();
  }

  Widget _buildSearchBody() {
    return _searchBg(
      child: Row(
        children: [
          //搜索icon
          _buildSearchIcon(),

          //输入框
          buildSearchInput(),

          //删除图标
          Expanded(
            child: buildSearchDelete(),
          )
        ],
      ),
    );
  }

  Widget buildSearchDelete() {
    return Container(
      margin: EdgeInsets.only(right: auto(18)),
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          //处理下删除逻辑
          animationController.reverse();
          inputController.clear();
        },
        child: ScaleTransition(
          scale: animation,
          child: Container(
            padding: EdgeInsets.all(auto(10)),
            child: Icon(
              CupertinoIcons.clear_circled_solid,
              size: auto(38),
              color: Color(0xFF999999).withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSearchInput() {
    return Container(
      width: auto(500),
      padding: EdgeInsets.only(left: auto(24)),
      child: InputActions(
        context: context,
        focusNode: focusNode,
        child: TextField(
          focusNode: focusNode,
          controller: inputController,
          keyboardType: widget.keyboardType,
          autofocus: widget.autofocus ?? false,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: setSp(28),
          ),
          inputFormatters: widget.inputFormatters,
          maxLengthEnforced: true,
          decoration: InputDecoration(
            ///较小空间时，使组件正常渲染，包括文本垂直居中
            isDense: true,
            hintText: widget.hintText ?? "请输入",
            hintStyle: TextStyle(
              color: Color(0xFF999999),
              fontSize: setSp(24),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(0.0),
          ),
          onChanged: (msg) {
            //处理下删除图标的显示
            if (msg.length != 0) {
              animationController.forward();
            } else {
              animationController.reverse();
            }

            //监听输入的数值
            widget.onChanged(msg);
          },
        ),
      ),
    );
  }

  Widget _buildSearchIcon() {
    return Container(
      margin: EdgeInsets.only(left: auto(29)),
      child: Icon(Icons.search, color: Color(0xFF999999)),
    );
  }

  ///主体背景构造
  Widget _searchBg({Widget child}) {
    return Container(
      height: auto(72),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(36),
      ),
      child: child,
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}
