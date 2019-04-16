import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Interest Calculator',
      home: SIForm(),
    ) // MaterialApp
  );// runApp
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIForm();
  }
}

class _SIForm extends State<SIForm>{

  List<String> _currencies = ['Rupees', 'Dollar', 'Pounds', 'Others'];
  String _currentItemSelected = 'Rupees';
  final _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context){

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
      ),// AppBar

      body: Container(
        margin: EdgeInsets.only(right: _minimumPadding * 2, left: _minimumPadding*2),
        child: ListView(
          children: <Widget>[
            getImageAsset(),

            Padding(
              padding: EdgeInsets.only(top:_minimumPadding, bottom:_minimumPadding),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Principle",
                  hintText: "Enter Principle eg:10000",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
                onChanged: (String userInput) {},
              ), // Textfield Principle
            ), //Padding of Principle

            Padding(
              padding: EdgeInsets.only(top:_minimumPadding, bottom:_minimumPadding),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Rate of Interest",
                  hintText: "Enter in percentage eg:10",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
                onChanged: (String userInput) {},
              ), // Textfield Rate of Interest
            ), // Padding of Rate of Interest


            Padding(
              padding: EdgeInsets.only(top:_minimumPadding, bottom:_minimumPadding),
              child: Row(
               children: <Widget> [

                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Time",
                      hintText: "Time in years",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      )
                    ),
                    onChanged: (String userInput) {},
                  ) // Textfield Rate of Interest
                ), // Expanded 1

                Container(width: _minimumPadding* 5),

                Expanded(
                  child: DropdownButton<String>(
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
                  ) // DropdownButton
                ) // Expanded 2

              ] // Row widget list
            ), // Row
          ), // Padding Row

          Padding(
            padding: EdgeInsets.only(bottom: _minimumPadding, top:_minimumPadding),
            child: Row(
              children: <Widget>[

                Expanded(
                  child: RaisedButton(
                    child: Text("Calculate"),
                    onPressed: () {
                      debugPrint("calculate pressed");
                    }
                  ) // RaisedButton Calculate
                ), //Expanded

                Expanded(
                  child: RaisedButton(
                    child: Text("Reset"),
                    onPressed: () {
                      debugPrint("Reset pressed");
                    }
                  ), // RaisedButton Reset
                ) //Expanded
              ]

            ) // Row 2 Submit and reset buttons
          ), // Padding

          Padding(
            padding: EdgeInsets.all(_minimumPadding * 2),
            child: Text('Todo Text')
          )

          ] // Column widget list
        ) //Column
      ) // Container
    );// Scaffold
  }

  void _dropDownItemSelected(newValueSelected) {

    setState( () {
      this._currentItemSelected = newValueSelected;
    }); // setState
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/food.jpg');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0);
    return Container(child:image, margin: EdgeInsets.all(_minimumPadding * 10));
  }


}

