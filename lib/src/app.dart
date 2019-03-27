import 'package:flutter/material.dart';

class App extends StatefulWidget{
  createState() {
    return AppStateKeeper();

  }
}

class AppStateKeeper extends State<App> {

  int Score = 1;

  final themeColor = const Color(0xFF26ae60);
  final bgColor = const Color(0xFFDAE0E2);

  Widget build(context) {
    return MaterialApp(
    home: Scaffold(
        body: Text('$Score'),

        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: bgColor,
          ),
          backgroundColor: themeColor,
          onPressed: () {
            setState(() {
              Score = Score + 1;
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
