import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final text = Text(
      "Account Page",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black54, fontSize: 15),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            text
          ],
        ),
      ),
    );
  }

}