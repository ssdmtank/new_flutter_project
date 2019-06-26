import 'package:flutter/material.dart';

//首页导航栏
class HomeFragmentAppBar extends StatefulWidget implements PreferredSizeWidget {

  ValueChanged<int> valueChanged;

  HomeFragmentAppBar(this.valueChanged);

  @override
  State<StatefulWidget> createState() {
    return _HomeFragmentAppBarState();
  }

  @override
  Size get preferredSize => Size(100.0, 50.0);
}

class _HomeFragmentAppBarState extends State<HomeFragmentAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      /*阴影*/
      title: Row(
        children: <Widget>[
          Stack(
            alignment: Alignment(1.8, -1.5),
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  "images/01.jpg",
                  width: 30.0,
                  height: 30.0,
                ),
              ),
              Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1),
                  )),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            /*  左对齐*/
            padding: EdgeInsets.only(left: 4.0),
            margin: EdgeInsets.only(left: 10.0),
            width: 180.0,
            height: 30.0,
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Icon(
              Icons.videogame_asset,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Icon(
              Icons.cloud_download,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}
