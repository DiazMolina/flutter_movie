import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int photoindex = 0;

  List<String> photos = [
    'assets/img/1.jpg',
    'assets/img/2.jpg',
    'assets/img/3.jpg',
    'assets/img/4.jpg',
    'assets/img/5.jpg',
    'assets/img/6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
          drawer: Drawer(),
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0.0,
            actions: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Movie",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0),
                  ),
                  Text(
                    "Prime",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0),
                  ),
                  SizedBox(width: 180.0),
                  IconButton(icon: Icon(Icons.search), onPressed: () {}),
                ],
              )
            ],
            bottom: TabBar(tabs: <Widget>[
              Tab(text: "Inicio"),
              Tab(text: "Peliculas"),
              Tab(text: "Series"),
              Tab(text: "Deportes"),
            ]),
          ),
          body: ListView(shrinkWrap: true, children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(

                      height: screenHeight / 3,
                      width: MediaQuery.of(context).size.width,
                      child: new Carousel(
                        boxFit: BoxFit.cover,
                        images: [
                          AssetImage('assets/img/1.jpg'),
                          AssetImage('assets/img/2.jpg'),
                          AssetImage('assets/img/3.jpg'),
                          AssetImage('assets/img/4.jpg'),
                          AssetImage('assets/img/5.jpg'),
                          AssetImage('assets/img/6.jpg'),
                          AssetImage('assets/img/7.jpg'),
                          AssetImage('assets/img/8.jpg'),
                          AssetImage('assets/img/9.jpg'),
                        ],
                        animationCurve: Curves.fastOutSlowIn,
                        animationDuration: Duration(milliseconds: 3000),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Column(

                  children: <Widget>[
                    Padding(

                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                            child: Text(
                              "TV y Peliculas",

                              style: TextStyle(fontSize: 20.0,color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 180.0,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: photos.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 140.0,
                                child: Card(
                                  child: Image.asset(
                                    photos[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 10.0),
            Column(
              children: <Widget>[

                   Container(

                      height: 230.0,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(

                                padding:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                                child: Text(
                                  'Top Peliculas',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                              InkWell(
                                child: Text(
                                  'mas',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 18.0),
                                ),
                                onTap: () {
                                },
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: 180.0,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: photos.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      width: 140.0,
                                      child: Card(
                                        child: Image.asset(photos[index],
                                            fit: BoxFit.fill),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          )
                        ],
                      )),

              ],
            ),
          ])),
    );
  }
}
