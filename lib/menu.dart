import 'package:duty_free_allowance/calculator.dart';
import 'package:duty_free_allowance/home.dart';
import 'package:flutter/material.dart';
import 'Allowance.dart';
import 'items.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class Menu extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Home Page", Icons.home),
    new DrawerItem("Allowance", Icons.credit_card),
    new DrawerItem("Calculator", Icons.info),
    new DrawerItem("Items", Icons.list)
    //add here 1st
  ];

  @override
  State<StatefulWidget> createState() {
    return new MenuState();
  }
}

class MenuState extends State<Menu> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:

        return new LoginScreen3();

      case 1:
        return new Allowance();
      case 2:
        return new Calculator();
      //according to items add here
      case 3:
        return new Items();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new DrawerHeader(
              child: null,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage('assets/SLDFAlogo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
