import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(new HomeFragment());

class HomeFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeFragmentState();
  }
}

class _HomeFragmentState extends State<StatefulWidget> {
  bool isVisible = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 251, 114, 153)),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  "images/01.jpg",
                  width: 30.0,
                  height: 30.0,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft, //  左对齐
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
        ),
        body: new ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 13.0),
              color:Colors.white,
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('直播'),
                      Container(
                        height: 1,
                        margin: EdgeInsets.only(top: 10.0),
                        width: 30.0,
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('推荐'),
                      Container(
                        height: 1,
                        width: 30.0,
                        color: isVisible?Colors.redAccent:Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('追番'),
                      Container(
                        height: 1,
                        width: 30.0,
                        color: isVisible?Colors.redAccent:Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('国家宝藏'),
                      Container(
                        height: 1,
                        width: 30.0,
                        color: isVisible?Colors.redAccent:Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('故事王'),
                      Container(
                        height: 1,
                        width: 30.0,
                        color: isVisible?Colors.redAccent:Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
