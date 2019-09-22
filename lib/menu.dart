import 'package:duty_free_allowance/OurApps.dart';
import 'package:duty_free_allowance/calculator.dart';
import 'package:duty_free_allowance/home.dart';
import 'package:duty_free_allowance/loginscreen.dart';
import 'package:flutter/material.dart';
import 'Allowance.dart';
import 'items.dart';
import 'package:duty_free_allowance/slcustomsweb.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class Menu extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("SL DutyFree Allowance", Icons.home),
    new DrawerItem("Allowance", Icons.credit_card),
    new DrawerItem("Calculator", Icons.info),
    new DrawerItem("More Apps", Icons.more),
    new DrawerItem("Items", Icons.list),
    new DrawerItem("SL Customs Web", Icons.web)
    //add here 1st
  ];

  @override
  State<StatefulWidget> createState() {
    return new MenuState(0);
  }
}

class MenuState extends State<Menu> {
  int _selectedDrawerIndex = 0;

  MenuState(this._selectedDrawerIndex);

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new LoginScreen3();
      case 1:
        return new Allowance();
      case 2:
        return new Calculator();
      case 3:
        return new OurApps();
      case 4:
        return new Items();
      case 5:
        return new SlCustomsWeb();

      default:
        return new Text("Error");
    }
  }

  PageController _controller =
      new PageController(initialPage: 1, viewportFraction: 1.0);
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

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
                  color: Colors.purple,
                  image: new DecorationImage(
                    image: new ExactAssetImage('assets/SLDFAlogo.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              new Column(children: drawerOptions)
            ],
          ),
        ),
        body: Container(width: width, height: height, child:_getDrawerItemWidget(_selectedDrawerIndex)),);
  }
}
