import 'package:flutter/material.dart';
import 'package:mellow_flutter_app/Constants.dart';
import 'package:mellow_flutter_app/pages/Dashboard.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: bigRadius,
      child: appLogo,
    );

    final emailTextInput = TextFormField(
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      autofocus: false,
      decoration: InputDecoration(
          hintText: emailHintText,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintStyle: TextStyle(color: greyColor)),
      style: TextStyle(
        color: darkGreyColor,
      ),
    );

    final passwordTextInput = TextFormField(
      keyboardType: TextInputType.text,
      maxLines: 1,
      autofocus: false,
      decoration: InputDecoration(
          hintText: passwordHintText,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintStyle: TextStyle(color: greyColor)),
      style: TextStyle(
        color: darkGreyColor,
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
            Navigator.of(context)
              .push(MaterialPageRoute<Widget>(builder: (BuildContext context) {
                return new Dashboard();
          }));
        },
        color: appColorDark,
        child: Text(loginButtonText, style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: bigRadius),
            emailTextInput,
            SizedBox(height: 10),
            passwordTextInput,
            SizedBox(height: 20),
            loginButton
          ],
        ),
      ),
    );
  }
}
