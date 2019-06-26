import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeTabBar extends StatefulWidget {
  TabController _controller;
  HomeTabBar(this._controller);
  @override
  State<StatefulWidget> createState() {
    return _HomeTabBarState();
  }
}

class _HomeTabBarState extends State<HomeTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.0,
      child: TabBar(
        indicatorColor: Colors.red,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: <Widget>[
          Text("直播"),
          Text("推荐"),
          Text("追番"),
          Text("国家"),
          Text("故事"),
        ],
        controller: widget._controller,
      ),
    );
  }
}
