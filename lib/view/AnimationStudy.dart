import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(new HomeFragment());

class HomeFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeFragmentState();
  }
}

class _HomeFragmentState extends State<StatefulWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  double xs = 1.0;
  double ys = 1.0;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    animation =
        Tween<double>(begin: 50.0, end: 200.0).animate(animationController);
    animation.addListener(() {
      setState(() {
        print(animation.value);
        xs = 2.3 + animation.value/45;
        ys = 2.3 - animation.value/44;
      });
    });
    //启动
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        //
        body: Center(
          child: Stack(
            alignment: Alignment(xs, ys),
            children: <Widget>[
              Container(
                width: 150.0,
                height:500.0,
              ),
              Container(
                width: animation.value,
                height: animation.value,
                decoration: BoxDecoration(
                    color: Color.fromARGB(
                        255,
                        animation.value.toInt(),
                        255 - animation.value.toInt(),
                        255 - animation.value.toInt()),
                    borderRadius: BorderRadius.circular(100.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
