import 'package:flutter/material.dart';


class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm>{

  // Variables
  List<String> _currencies = ['Rupees', 'Dollar', 'Pounds', 'Others'];
  String _currentItemSelected = '';
  final double _minimumPadding = 5.0;

  @override
  void initState() {
    super.initState();
    _currentItemSelected = _currencies[0];
  }
  TextEditingController principleController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();

  var displayResult = '';

  @override
  Widget build(BuildContext context){

    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
      ),// AppBar

      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: ListView(
          children: <Widget>[

            getImageAsset(),

            genTextField(labelText:"Principle", hintText:"Enter Principle eg:10000", textStyle: textStyle, controller:principleController),

            genTextField(labelText:"Rate of Interest", hintText:"Enter in percentage eg:10", textStyle: textStyle, controller:roiController),

            Padding(
              padding: EdgeInsets.only(top:_minimumPadding, bottom:_minimumPadding),
              child: Row(
               children: <Widget> [

                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: textStyle,
                    controller: termController,
                    decoration: InputDecoration(
                      labelText: "Time",
                      labelStyle: textStyle,
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
                    color: Theme.of(context).accentColor,
                    textColor: Theme.of(context).primaryColorDark,
                    child: Text("Calculate", textScaleFactor: 1.5),
                    onPressed: () {
                      setState( () {
                        this.displayResult = _calculateTotalReturns();
                      });
                    }
                  ) // RaisedButton Calculate
                ), //Expanded

                Expanded(
                  child: RaisedButton(
                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text("Reset", textScaleFactor: 1.5),
                    onPressed: () {

                      setState( () {
                        _reset();
                      });
                    }
                  ), // RaisedButton Reset
                ) //Expanded
              ]

            ) // Row 2 Submit and reset buttons
          ), // Padding

          Padding(
            padding: EdgeInsets.all(_minimumPadding * 2),
            child: Text(this.displayResult, style: textStyle,)
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
    AssetImage assetImage = AssetImage('images/money.png');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0);
    return Container(child:image, margin: EdgeInsets.all(_minimumPadding * 10));
  }

  Widget genTextField({String labelText, String hintText, TextStyle textStyle, TextEditingController controller} ) {
    return Padding(
      padding: EdgeInsets.only(top:_minimumPadding, bottom:_minimumPadding),
      child: TextField(
        keyboardType: TextInputType.number,
        style: textStyle,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: textStyle,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0)
          )
        ),
        onChanged: (String userInput) {},
      ), // Textfield
    );
  } // genTextField function

  String _calculateTotalReturns() {
    double principle = double.parse(principleController.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);

    double totalAmountPayable = principle + (principle * roi * term) / 100;

    String result = 'After $term years, your investment will become worth $totalAmountPayable $_currentItemSelected';
    return result;
  }

  void _reset() {
    principleController.text = '';
    roiController.text = '';
    termController.text = '';
    displayResult = '';
    _currentItemSelected = _currencies[0];
  }
}

