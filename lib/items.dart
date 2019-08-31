import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.do_not_disturb),
                text: "RESTRICTED",
              ),
              Tab(icon: Icon(Icons.done), text: "PERMITTED"),
            ],
          ),
          centerTitle: true,
          title: Text('LIST OF GOODS'),
        ),
        body: TabBarView(
          children: [
            new ListView(
              children: list,
            ),
            new ListView(
              children: list,
            ),
          ],
        ),
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
    );
  }
}

List<Widget> list = <Widget>[
  new ListTile(
    title: new Text('Air Conditioner',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    leading: new MyBullet(),
  ),
  new ListTile(
    title: new Text('Deep Freezer',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    leading: new MyBullet(),
  ),
  new ListTile(
    title: new Text('Dish Washer',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    leading: new MyBullet(),
  ),
  new ListTile(
    title: new Text('Electric Oven',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('Four burners'),
    leading: new MyBullet(),
  ),
  new ListTile(
    title: new Text('Refrigerator new/used CFC free',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('OVER 500 LTR'),
    leading: new MyBullet(),
  ),
  new ListTile(
    title: new Text('T.V CRT',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('OVER 29"'),
    leading: new MyBullet(),
  ),
  new ListTile(
    title: new Text('T.V LCD/LED/PLASMA',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('OVER 55"'),
    leading: new MyBullet(),
  ),
];

