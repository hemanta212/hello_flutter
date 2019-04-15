import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Stateful App Example',
      home: FavoriteCity(),
    ) // MaterialApp
  );// runApp
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity>{

  String nameCity = "";
  List<String> _currencies = ['Rupees', 'Dollar', 'Pounds', 'Others'];
  String _currentItemSelected = 'Rupees';

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Example"),
      ),// AppBar

      body: Container (
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput){
                setState(() {
                  nameCity = userInput;
                }); // setState
              }
            ), //TextField
            DropdownButton<String>(
              items: _currencies.map( (String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),

                  ); // DropdownMenuItem
                }).toList(),

              onChanged: (String newValueSelected){

                _dropDownItemSelected(newValueSelected);

              }, //onChanged

              value: _currentItemSelected,

            ), // DropdownButton


            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Your best city is $nameCity",
                style: TextStyle(fontSize: 20.0),
              ) // Text
            ) // Padding
          ]
        ) //Column
      ) // Container
    );// Scaffold
  }

  void _dropDownItemSelected(newValueSelected) {

    setState( () {
      this._currentItemSelected = newValueSelected;
    }); // setState

  }

}

