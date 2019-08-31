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
          children: <Widget>[
            (new ListTile(
              leading: new MyBullet(),
              title: new Text('My first line'),
            )),
            new ListTile(
                leading: new MyBullet(), title: new Text('My second line')),
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
      height: 15.0,
      width: 15.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.rectangle,
      ),
    );
  }
}
