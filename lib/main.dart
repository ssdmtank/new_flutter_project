import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'test',
      theme: new ThemeData(
        //主题色
        primarySwatch: Colors.blue
      ),
      home: new MyHomePage(title: 'Demo Home Page',),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}) : super(key : key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //顶部bar
      appBar: AppBar(
        leading: Icon(Icons.add),
        title: Text('hello1'),
      ),
      body: new Text('hello1'),
    );
  }
}
