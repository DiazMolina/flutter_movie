import 'package:flutter/material.dart';
import 'package:movies_prime/splash_sreen.dart';
import 'home_page.dart';
void main(){
  runApp(MaterialApp(
    title: "video prime",
    home: splash_screen(),
    debugShowCheckedModeBanner: false,
    routes: routes,
  
  ));
}

var routes =<String,WidgetBuilder>{
  "/home" : (BuildContext context) =>Home(),
};