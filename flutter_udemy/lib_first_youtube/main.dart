import 'package:flutter/material.dart';
import './app_screens/first_screen.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My flutter App',
      home: Scaffold(

        appBar: AppBar(
          title: Text('My first flutter App Screen'),
        ), //AppBar

        body : FirstScreen() // from first_screen.dart
      ) //Scaffold

    ); //MaterialApp
  } // build

} //MyFlutterApp
