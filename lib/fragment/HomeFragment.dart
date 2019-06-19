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
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 13.0),
              color: Colors.white,
              height: 60.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('直播'),
                      Container(
                        height: 1,
                        margin: EdgeInsets.only(top: 5.0),
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
                        margin: EdgeInsets.only(top: 5.0),
                        width: 30.0,
                        color: isVisible ? Colors.redAccent : Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('追番'),
                      Container(
                        height: 1,
                        margin: EdgeInsets.only(top: 5.0),
                        width: 30.0,
                        color: isVisible ? Colors.redAccent : Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('国家宝藏'),
                      Container(
                        height: 1,
                        margin: EdgeInsets.only(top: 5.0),
                        width: 30.0,
                        color: isVisible ? Colors.redAccent : Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('故事王'),
                      Container(
                        height: 1,
                        margin: EdgeInsets.only(top: 5.0),
                        width: 30.0,
                        color: isVisible ? Colors.redAccent : Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*轮播*/
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      child: Image.asset(
                        "images/01.jpg",
                        fit: BoxFit.cover,
                        height: 120.0,
                      ),
                    ),
                  ],
                )),
            /*            //列表 ListView.builder( itemBuilder: (context, index) { return; }, itemCount: 5, ),*/
            Container(
              height: 1.0,
              color: Colors.black12,
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                /*将主轴空白区域均分，使各个子控件间距相等*/
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text("我的关注"),
                  ),
                  Text(
                    "16小时之前",
                    style: TextStyle(color: Colors.black26),
                  ),
                  Text("宁采臣丶在唱歌"),
                  Text(
                    "直播了唱见电台",
                    style: TextStyle(color: Colors.black26),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black26,
                    size: 15,
                  ),
                ],
              ),
            ),
            Container(
              height: 1.0,
              color: Colors.black12,
            ),
            //----文字
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("推荐直播"),
                  Row(
                    children: <Widget>[
                      Text(
                        "换一换",
                        style: TextStyle(color: Colors.black26),
                      ),
                      Icon(
                        Icons.refresh,
                        color: Colors.black26,
                      ),
                    ],
                  )
                ],
              ),
            ),
            //---视频区
            SizedBox(
              height: 450.0,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.4),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(3.0),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                            child: Image.asset(
                              "images/01.jpg",
                              fit: BoxFit.cover,
                              width: 190.0,
                              height: 80.0,
                            ),
                          ),
                        ),
                        Text(
                          "真香",
                        ),
                        Text(
                          "绝地求生",
                          style: TextStyle(color: Colors.black26),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  );
                },
                itemCount: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
