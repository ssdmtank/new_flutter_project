import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(new HomeFragment());

class HomeFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeFragmentState();
  }
}

class _HomeFragmentState extends State<StatefulWidget> {
  bool isVisible = false;

  var editerTextController = TextEditingController();

  var mTextFieldController = TextEditingController();

  var _scrollOffsetController = ScrollController(initialScrollOffset: 100.0);

  double downOneY = 0.0;

  //是否显示头部
  bool appBarIsVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 251, 114, 153)),
      home: Scaffold(
        appBar: appBarIsVisible?AppBar(
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
        ):null,
        //列表
        body: Listener(
          onPointerDown: (dowPointEvent) {
            downOneY = dowPointEvent.position.dy;
            print("size=${dowPointEvent.size}");
            print("position=${dowPointEvent.position.distance}");
            print("positionx=${dowPointEvent.position.dx}");
            print("positiony=${dowPointEvent.position.dy}");
          },
          onPointerMove: (movePointEvent) {
            print("movex=${movePointEvent.position.dx}");
            print("movey=${movePointEvent.position.dy}");
            var moveDistance = movePointEvent.position.dy - downOneY;
            if (moveDistance < 0) {
              print("向上滑动");
              if (-moveDistance > 40) {
                setState(() {
                  appBarIsVisible = false;
                });
              }
            } else {
              print("向下滑动");
              if (moveDistance > 40) {
                setState(() {
                  appBarIsVisible = true;
                });
              }
            }
          },
          child: ListView(
              scrollDirection: Axis.vertical,
              reverse: false,
              controller: _scrollOffsetController,
              children: <Widget>[
                Container(
                  alignment: Alignment(0, 0),
                  color: Colors.blue,
                  width: 200.0,
                  height: 100.0,
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                Container(
                  color: Colors.red,
                  width: 200.0,
                  height: 100.0,
                ),
                Container(
                  color: Colors.black,
                  width: 200.0,
                  height: 100.0,
                ),
                Container(
                  color: Colors.yellow,
                  width: 200.0,
                  height: 100.0,
                ),
                Container(
                  color: Colors.white,
                  width: 200.0,
                  height: 100.0,
                ),
                Container(
                  color: Colors.orange,
                  width: 200.0,
                  height: 100.0,
                ),
                Container(
                  alignment: Alignment(0, 0),
                  color: Colors.blue,
                  width: 200.0,
                  height: 100.0,
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                Container(
                  color: Colors.red,
                  width: 200.0,
                  height: 100.0,
                ),
                Container(
                  color: Colors.black,
                  width: 200.0,
                  height: 100.0,
                ),
                Container(
                  color: Colors.yellow,
                  width: 200.0,
                  height: 100.0,
                ),
                Container(
                  color: Colors.white,
                  width: 200.0,
                  height: 100.0,
                ),
                Container(
                  color: Colors.orange,
                  width: 200.0,
                  height: 100.0,
                ),
                SizedBox(
                  height: 200.0,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 12,
                      itemBuilder: (count, index){
                        return Container(
                          color: Colors.red,
                          width: 100.0,
                          height: 70.0,
                          child: Icon(Icons.access_alarm),
                        );
                      }),
                ),
              ]),
        ),
      ),
    );
  }
}
