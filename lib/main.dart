import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Text("Member ID"),
              SizedBox(
                width: 50.0,
              ),
              Text("Member Name"),
            ],
          ),
          DataTable(
            columnSpacing: 4.0,
            sortAscending: true,
            columns: [
              DataColumn(label: Text("Date")),
              DataColumn(label: Text("Description")),
              DataColumn(label: Text("Loan Amount")),
              DataColumn(label: Text("Principal")),
              DataColumn(label: Text("Interest")),
              DataColumn(label: Text("Remaining")),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("12/02/2021")),
                DataCell(Text("Farming")),
                DataCell(Text("20000")),
                DataCell(Text("15000")),
                DataCell(Text("120")),
                DataCell(Text("60000")),
              ]),
              DataRow(cells: [
                DataCell(Text("12/03/2021")),
                DataCell(Text("Tractor")),
                DataCell(Text("20000")),
                DataCell(Text("15000")),
                DataCell(Text("120")),
                DataCell(Text("60000")),
              ]),
            ],
          ),
        ],
      ),
    ));
  }
}
