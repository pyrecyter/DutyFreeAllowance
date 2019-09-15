import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Allowance extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AllowanceState();
  }

}

class AllowanceState extends State {

  double cata1,cata2,cata3,catb1,catb2,catb3;

Future<List<String>> getFavorites() async {
    DocumentSnapshot querySnapshot = await Firestore.instance
        .collection('users')
        .document('cat_a')
        .get();
    if (querySnapshot.exists &&
        querySnapshot.data.containsKey('a') ) {
      // Create a new List<String> from List<dynamic>
      return List<String>.from(querySnapshot.data['a']);
    }
    return [];
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.only(top: 12),
        child: Column(children: <Widget>[
          Card(
            child: Image.asset('assets/SLDFAlogo.png'),
          ),
          Card(
              child: Container(
                child: Text(
                  'Allowance of goods in SL according to period of abroad',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                width: 1000,
                padding: EdgeInsets.all(10),
              ),
              color: Colors.purple),
          DataTable(
            columns:[ DataColumn(label: Text('Category'),),DataColumn(label: Text('Days'),),DataColumn(label: Text('Allowance'),),
            ], 
            rows: <DataRow>[
              DataRow(cells: <DataCell>[
                DataCell(Text('A', )),DataCell(Text('<90', )),DataCell(Text('187.5 USD', )),
              ]
              ),
               DataRow(cells: <DataCell>[
                DataCell(Text('B',)),DataCell(Text('90-365', )),DataCell(Text('625 USD', )),
              ]
              ),
               DataRow(cells: <DataCell>[
                DataCell(Text('C', )),DataCell(Text('>90', )),DataCell(Text('1750 USD', )),
              ]
              ),
            ],
          ),
           Card(
              child: Container(
                child: Text(
                  'Allowance of goods from abord according to period of abroad',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                width: 1000,
                padding: EdgeInsets.all(10),
              ),
              color: Colors.purple),
          DataTable(
            columns:[ DataColumn(label: Text('Category'),),DataColumn(label: Text('Days'),),DataColumn(label: Text('Allowance'),),
            ], 
            rows: <DataRow>[
              DataRow(cells: <DataCell>[
                DataCell(Text('A', )),DataCell(Text('<90', )),DataCell(Text('125 USD', )),
              ]
              ),
               DataRow(cells: <DataCell>[
                DataCell(Text('B',)),DataCell(Text('90-365', )),DataCell(Text('500 USD', )),
              ]
              ),
               DataRow(cells: <DataCell>[
                DataCell(Text('C', )),DataCell(Text('>90', )),DataCell(Text('1000 USD', )),
              ]
              ),
            ],
          ),
           Card(
              child: Container(
                child: Text(
                  'Duty Free Allowance',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                width: 1000,
                padding: EdgeInsets.all(10),
              ),
              color: Colors.purple),
          DataTable(
            columns:[ DataColumn(label: Text('Days'),),DataColumn(label: Text('SL Purchase'),),DataColumn(label: Text('Abroad Purchase'),),
            ], 
            rows: <DataRow>[
              DataRow(cells: <DataCell>[
                DataCell(Text('<90', )),DataCell(Text('187.5 USD', )),DataCell(Text('125 USD', )),
              ]
              ),
               DataRow(cells: <DataCell>[
                DataCell(Text('90-365',)),DataCell(Text('625 USD', )),DataCell(Text('500 USD', )),
              ]
              ),
               DataRow(cells: <DataCell>[
                DataCell(Text('>365', )),DataCell(Text('1750 USD', )),DataCell(Text('1000 USD', )),
              ]
              ),
            ],
          )
        ]),
        );
  }
}
