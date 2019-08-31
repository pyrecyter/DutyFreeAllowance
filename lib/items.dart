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
                Tab(icon: Icon(Icons.do_not_disturb), text: "RESTRICTED",),
                Tab(icon: Icon(Icons.done), text: "PERMITTED"),
              ],
            ),
            title: Text('LIST OF GOODS'),
          ),
          body: TabBarView(
            children: [
              Center( child: Text("Page 1")),
              Center( child: Text("Page 2")),
            ],
          ),
        ),
      );
  }
}