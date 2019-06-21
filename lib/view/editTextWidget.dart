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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /* TODO: implement build*/ return new MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 251, 114, 153)),
      home: Scaffold(
        appBar: AppBar(
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
        ),
        body: new ListView(
          children: <Widget>[
            //输入框
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.only(left: 20.0),
              alignment: Alignment.center,
              height: 40.0,
              width: 200.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, //左对齐
                children: <Widget>[
                  Icon(Icons.access_alarm),
                  Container(
                    padding: EdgeInsets.only(left: 5.0),
                    alignment: Alignment.center,
                    height: 36.0,
                    width: 200.0,
                    child: EditableText(
                      controller: editerTextController,
                      focusNode: FocusNode(),
                      style: TextStyle(color: Colors.red),
                      cursorColor: Colors.blue,
                      onChanged: (result) {
                        print(result);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
