import 'package:flutter/material.dart';
import 'dart:ui';
void main() => runApp(new HomeFragment());
class HomeFragment extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeFragmentState();
  }
}

class _HomeFragmentState extends State<StatefulWidget>{
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 250, 90, 150)),
      home:Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              ClipOval(
                child: Image.asset("images/01.jpg",width:30.0,height: 30.0,),
              )
          ],
          ),
          centerTitle: true,
        ),
      ) ,
    );
  }
}