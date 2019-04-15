import 'package:flutter/material.dart';
//import './app_screens/home.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Exploring List view',
      home: Scaffold(

        appBar: AppBar(
          title: Text("Basic List View")
        ), // AppBar

        body: getListView(),
      ), // Scaffold
    ), // MaterialApp
  ); //runApp
} // Main

Widget getListView() {

  var listView = ListView(
    children: <Widget>[

      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View !"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Landscape tapped");
        },
      ),//ListTile

      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
      ),

      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),

      Text("Yet another element"),
      Container(color: Colors.red, height: 50.0)

    ],//Widget list

  ); // ListView

  return listView;
} // getListView
