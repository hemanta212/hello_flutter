import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          genLuckyNo(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        )//Text

      )//Center

    );//Material
  } //build

  String genLuckyNo() {

    var random = Random();
    int luckyNo = random.nextInt(10);
    return "Your lucky no is $luckyNo ";

  } // genLuckyNo

}
