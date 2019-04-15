import 'package:flutter/material.dart';
//import './app_screens/home.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Exploring List view',
      home: Scaffold(

        appBar: AppBar(
          title: Text("Long List View")
        ), // AppBar

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB clicked");
          },
          child: Icon(Icons.add),
          tooltip: 'Add One More Item',
        ),// FloatingActionButton

        body: getListView(),
      ), // Scaffold
    ), // MaterialApp
  ); //runApp
} // Main


void showSnackBar(BuildContext context, String item) {

  var snackBar = SnackBar(
    content: Text("Oe $item thichis. Lamo herira?"),
    action: SnackBarAction(
      label: "Undo",
      onPressed: () {
        debugPrint("Lamo $item");
      }
    ) //SnackBarAction
  ); // SnackBar


  Scaffold.of(context).showSnackBar(snackBar);
}






List<String> getListElements() {

  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView() {

  var listItems = getListElements();

  var listView = ListView.builder(
    itemBuilder: (context, index) {

      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: () {
          showSnackBar(context, listItems[index]);
        },
      ); // ListTile
    }
  );

  return listView;
} // getListView
