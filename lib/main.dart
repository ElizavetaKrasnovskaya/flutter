import 'package:flutter/material.dart';

import 'nav.dart';

void main() {runApp(MyApp());}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: NavDrawer(),
          appBar: AppBar(
            title: Text('Info'),
            backgroundColor: Colors.black,
            centerTitle: true,
          ),
          body: ListView(children: <Widget>[
            Center(
                child: Text(
                  'Orange Pi Pc Plus',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            DataTable(
              columns: [
                DataColumn(label: Text(
                    'Specification',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('CPU')),
                  DataCell(Text('Cortex-A7')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Memory')),
                  DataCell(Text('1GB DDR3')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Onboard Network')),
                  DataCell(Text('10/100 Ethernet RJ45')),
                ]),
                DataRow(cells: [
                  DataCell(Text('GPU')),
                  DataCell(Text('Mali400MP2 GPU')),
                ]),
              ],
            ),
          ])
      ),
    );
  }
}