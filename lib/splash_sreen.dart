import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:movies_prime/navigator_page.dart';

class splash_screen extends StatefulWidget {
  @override
  splash_screenState createState() {
    return new splash_screenState();
  }
}

class splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 7200), () => Navegador.GotoHome(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Icon(
                        Icons.cake,
                        color: Colors.greenAccent,
                        size: 50.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.0),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        RotateAnimatedTextKit(
                          duration: Duration(milliseconds: 7200),
                          onTap: () {
                            print("Tap Event");
                          },
                          text: ["Peliculas", "Series", "Deportes"],
                          textStyle: TextStyle(
                              fontSize: 40.0,
                              fontFamily: 'Horizon',
                              color: Colors.white),
                        ),
                      ],
                    ),
                    new CircularProgressIndicator(
                      backgroundColor: Colors.black,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
