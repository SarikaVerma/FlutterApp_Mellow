import 'package:flutter/material.dart';
import 'package:mellow_flutter_app/Constants.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final title = Text(
      "Home",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black54, fontSize: 15, wordSpacing: 16),
    );

    final image = new Image.asset(
      'assets/images/bg1.png',
      height: 100.0,
      width: 340,
      fit: BoxFit.cover,
    );

    final image1 = new Image.asset(
      'assets/images/bg2.jpg',
      height: 100.0,
      width: 340,
      fit: BoxFit.fill,
    );

    final image2 = new Image.asset(
      'assets/images/bg3.png',
      height: 100.0,
      width: 340,
      fit: BoxFit.cover,
    );

    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            title,
            new Padding(padding: new EdgeInsets.only(bottom: 8.0)),
            Card(
               // margin: EdgeInsets.only(bottom : 8.0),
                child: new Column(
                  children: <Widget>[
                    image,
                    new Text("ABC", style: TextStyle(wordSpacing: 8)),
                    new Text("Delhi", style: TextStyle(wordSpacing: 10, fontSize: 12))
                  ],
                )
            ),
            new Padding(padding: new EdgeInsets.only(bottom: 8.0)),
            Card(
               // margin: EdgeInsets.only(bottom : 8.0),
                child: new Column(
                  children: <Widget>[
                    image2,
                    new Text("DEF", style: TextStyle(wordSpacing: 8)),
                    new Text("Noida", style: TextStyle(wordSpacing: 10, fontSize: 12))
                  ],
                )
            ),
            new Padding(padding: new EdgeInsets.only(bottom: 8.0)),
            Card(
             //   margin: EdgeInsets.only(left : 8.0),
                child: new Column(
                  children: <Widget>[
                    image1,
                    new Text("GHI", style: TextStyle(wordSpacing: 8)),
                    new Text("Gurgaon", style: TextStyle(wordSpacing: 10, fontSize: 12))
                  ],
                )
            ),
          ],
      ),
    );
  }

}