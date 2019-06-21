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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
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
              padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              height: 40.0,
              width: 200.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.access_alarm),
                      Container(
                        padding: EdgeInsets.only(left: 5.0, right: 5.0),
                        alignment: Alignment.center,
                        height: 36.0,
                        width: 200.0,
                        child: EditableText(
                          controller: editerTextController,
                          focusNode: FocusNode(),
                          style: TextStyle(color: Colors.red),
                          cursorColor: Colors.blue,
                          backgroundCursorColor: Colors.black,
                          textDirection: TextDirection.ltr,
                          cursorWidth: 4.0,
                          cursorRadius: Radius.circular(11.0),
                          onChanged: (result) {
//                            print(result);
                          },
//                          textInputAction: TextInputAction.emergencyCall,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.phone),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white12, //背景色
                border: Border.all(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
           /* TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                icon: Icon(Icons.text_fields),
                labelText: '请输入你的姓名',
                helperText: '请输入你的真实姓名',
              ),
              autofocus: false,
            ),*/
            //TODO  TextField
            Container(
              width: 200,
              margin: EdgeInsets.all(20.0),
//              height: 80.0,
              child: TextField(
                controller: mTextFieldController,
                focusNode: FocusNode(),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5.0),
//                  icon: Icon(
//                    Icons.perm_contact_calendar,
//                    color: Colors.green,
//                  ),
                  labelText: '请输入你的姓名',
                  labelStyle: TextStyle(color: Colors.blue),
                  helperText: '请输入你的真实姓名',
                  suffixIcon: Icon(Icons.print),
                  prefixIcon: Icon(Icons.archive),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
                autofocus: false,
              ),
            ),
            TextFormField(

            ),
          ],
        ),
      ),
    );
  }
}
