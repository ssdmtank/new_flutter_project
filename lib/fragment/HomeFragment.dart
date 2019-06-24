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
  bool isVisible = false;

  var _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
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
          body: Column(
            children: <Widget>[
              Container(
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
                  controller: _controller,
                ),
              ),
              Container(height: 1,color: Colors.black12,width: 400.0,),
              Expanded(
                child: TabBarView(children: <Widget>[
                  ListView(
                    children: <Widget>[
                      /*轮播*/
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          child: Image.asset(
                            "images/01.jpg",
                            fit: BoxFit.cover,
                            height: 120.0,
                            width: 350.0,
                          ),
                        ),
                      ),
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
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 1.4),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6.0)),
                                          child: Image.asset(
                                            "images/01.jpg",
                                            fit: BoxFit.cover,
                                            width: 190.0,
                                            height: 90.0,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                "陈哥",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.supervisor_account,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    "8.5万人",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
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
                  Icon(Icons.add),
                  Icon(Icons.add),
                  Icon(Icons.add),
                  Icon(Icons.add),
                ],controller: _controller,),
              )
            ],
          )),
    );
  }
}
