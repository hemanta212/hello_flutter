import 'package:flutter/material.dart';

class App extends StatefulWidget{
  createState() {
    return AppStateKeeper();

  }
}

class AppStateKeeper extends State<App> {

  int score = 1;
  final double scaleFactor = 1.5;

  final themeColor = const Color(0xFF26ae60);
  final bgColor = const Color(0xFFDAE0E2);


  Widget build(context) {
    return MaterialApp(
    home: Scaffold(

        body: Text(
          'You have Pressed the plus button $score times',
           textAlign: TextAlign.center,
           style: TextStyle(fontWeight: FontWeight.bold),
           textScaleFactor: scaleFactor;
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: bgColor,
          ),
          backgroundColor: themeColor,
          onPressed: () {
            setState(() {
              score = score + 1;
            });
          }
        ),

        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text('Sound Cloud'),
          backgroundColor: themeColor,

        ),
      ),
  );
  }
}
