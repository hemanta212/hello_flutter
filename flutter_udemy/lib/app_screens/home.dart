import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 10.0, top: 30.0),
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget> [
                Expanded(
                  child: Text(
                    "Spice Jet",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 30.0,
                      fontFamily: 'Raleway',
                      fontStyle: FontStyle.italic,
                      color: Colors.white
                    ), //TextStyle

                  ) // Text
                ),

                Expanded(
                  child: Text(
                    "From Kat to Dubai via USA",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,

                    ), //TextStyle
                  ) // Text
                ),// Expanded
              ] // Row widget list

            ), // Row

            Row(
              children: <Widget> [
                Expanded(
                  child: Text(
                    "Summit Airlines",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35.0,
                      fontFamily: 'Raleway',
                      fontStyle: FontStyle.italic,
                      color: Colors.white
                    ), //TextStyle

                  ) // Text
                ),

                Expanded(
                  child: Text(
                    "From Lukla to Kathmandu",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,

                    ), //TextStyle
                  ) // Text
                ),// Expanded
              ] // Row widget list

            ), // Row
            FlightImageAsset(),
            FlightBookingButton(),


          ] // Center Column Widget list

        ) // Center Column

      ),// Containter
    );
  } //build

} // Home class





class FlightImageAsset extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    AssetImage assetImage = AssetImage('images/profile.jpg');
    Image image = Image(image: assetImage, width:200.0, height: 200.0);
    return Container(child:image,);
  }
}

class FlightBookingButton extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    return Container(
      margin: EdgeInsets.only(top:30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(
          "Book your filght",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700

          ) // TextStyle
        ), // Text
        elevation: 6.0,
        onPressed: () => bookFlight(context)
      ), //RasisedButton
    ); //Container

  } //build

  void bookFlight(BuildContext context){

    var alertDialog = AlertDialog(
      title: Text("Flight booked Successfully"),
      content: Text("Have a pleasant flight"),
    ); // AlertDialog

    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog
    ); // showDialog
  }

}

