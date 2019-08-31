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
            SingleChildScrollView(
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: Text('Item',
                        style: new TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20.0,color: Colors.black,decoration:TextDecoration.underline)),
                  ),
                  DataColumn(
                      label: Text('Amount',
                          style: new TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20.0,color: Colors.black,decoration:TextDecoration.underline))),
                ],
                rows: <DataRow>[
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Alarm Clock'),
                    ),
                    DataCell(
                      Text('2'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Artificial Flowers'),
                    ),
                    DataCell(
                      Text('12'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Baby Carriages'),
                    ),
                    DataCell(
                      Text('2'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Bathing Suits/Trunks'),
                    ),
                    DataCell(
                      Text('6'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Bathroom Set(With Accessories)'),
                    ),
                    DataCell(
                      Text('1'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text(
                          'Bedroom Set(One wadrobe,One dressing table and one bed'),
                    ),
                    DataCell(
                      Text('1'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Bed Sheets'),
                    ),
                    DataCell(
                      Text('6'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Bed Spreads'),
                    ),
                    DataCell(
                      Text('6'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Beds with or without mattresses'),
                    ),
                    DataCell(
                      Text('3'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Beer'),
                    ),
                    DataCell(
                      Text('2l'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Belts'),
                    ),
                    DataCell(
                      Text('6'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Bicylces Not Motorized'),
                    ),
                    DataCell(
                      Text('2'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Blankets'),
                    ),
                    DataCell(
                      Text('4'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Brief Cases'),
                    ),
                    DataCell(
                      Text('2'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Carpets'),
                    ),
                    DataCell(
                      Text('2'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Chandeliers'),
                    ),
                    DataCell(
                      Text('2'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Dining Chairs'),
                    ),
                    DataCell(
                      Text('8'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Computer Diskette'),
                    ),
                    DataCell(
                      Text('6 boxes'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Hats and Caps'),
                    ),
                    DataCell(
                      Text('6'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Hot water Gyser'),
                    ),
                    DataCell(
                      Text('1'),
                    ),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(
                      Text('Keytags'),
                    ),
                    DataCell(
                      Text('12'),
                    ),
                  ]),
                ],
              ),
            )
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
  new ListTile(
    title: new Text('T.V LCD/LED/PLASMA',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('OVER 55"'),
    leading: new MyBullet(),
  ),
  new ListTile(
    title: new Text('T.V LCD/LED/PLASMA',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('OVER 55"'),
    leading: new MyBullet(),
  ),
  new ListTile(
    title: new Text('T.V LCD/LED/PLASMA',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('OVER 55"'),
    leading: new MyBullet(),
  ),
];
