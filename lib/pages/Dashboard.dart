import 'package:flutter/material.dart';

import 'AccountPage.dart';
import 'FeedsPage.dart';
import 'HomePage.dart';

class Dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new NavigationDrawer();
  }
}

class NavigationDrawer extends State<Dashboard>{
  int _selectedDrawerIndex = 0;

  _getScreen(int pos) {
    switch (pos) {
      case 0:
        return HomePage();
      case 1:
        return FeedsPage();
      case 2:
        return AccountPage();
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {

    var drawerOptions = <Widget>[
      ListTile(
        title: Text("Dashboard"),
        trailing: Icon(Icons.dashboard),
        selected: 0 == _selectedDrawerIndex,
        onTap:  () {
          _onSelectItem(0);
        },
      ),
      ListTile(
        title: Text("Feeds"),
        trailing: Icon(Icons.perm_media),
        selected: 1 == _selectedDrawerIndex,
        onTap:  () {
          _onSelectItem(1);
        },
      ),
      ListTile(
        title: Text("Account"),
        trailing: Icon(Icons.account_box),
        selected: 2 == _selectedDrawerIndex,
        onTap:  () {
          _onSelectItem(2);
        },
      ),
    ];

    return new Scaffold(
      appBar: AppBar(
          title: Text("Mellow")
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: new CircleAvatar(
                backgroundImage: AssetImage('assets/images/default_profile.jpg'),
                radius: 60.0,
              ),
              accountName: new Text(
                "Sarika Verma",
                style: new TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              accountEmail: new Text(
                "sarika92v@gmail.com",
                style: new TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.w300),
              ),
            ),
            new Column(children: drawerOptions),
          ],
        ),
      ),
      body : _getScreen(_selectedDrawerIndex),
    );
  }

}
