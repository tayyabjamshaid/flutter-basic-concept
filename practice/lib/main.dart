import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practice/app_screens/home.dart';

void main() {
  runApp(
  MyApp()
   );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(title: "Tayyab App",home:Scaffold(appBar:AppBar(backgroundColor: Colors.brown,title:Text("Hi Tayyab",style: TextStyle(color: Colors.cyan),),),
 body:MyHomePage()));
  }
}