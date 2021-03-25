import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FetchData2 extends StatefulWidget {
  @override
  _FetchData2 createState() => _FetchData2();
}

class _FetchData2 extends State<FetchData2> {
  
  final db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {

    


    return Scaffold(
      
      body: StreamBuilder(
      stream: db.collection('loan').snapshots(),
      builder: (context, snapshot){
        
          return SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 200.0,
                    width: 200.0,
                    child: Image.asset('images/9.png'),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,50,0,0),
                    child: Text("கடன் விவரங்கள்", style: TextStyle(fontSize : 40.0, fontWeight: FontWeight.w400),),
                  ),
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          
                          children: [
                            Row(
                            children: <Widget>[
                              
                              SizedBox(width :10),
                              Text("தேதி", style: TextStyle(fontSize: 20.0, color: Colors.orange)),
                              SizedBox(width :140),
                              Text("கடன்தொகை", style: TextStyle(fontSize: 20.0, color: Colors.orange)),
                              SizedBox(width :40),
                              Text("மீதி", style: TextStyle(fontSize: 20.0, color: Colors.orange)),
                              SizedBox(width :5),
                              
                            ],
                          ),
                          SizedBox(height : 30.0),
                            Row(
                            children: <Widget>[
                              SizedBox(width :10),
                              Icon(Icons.calendar_today_rounded,),
                              SizedBox(width :20),
                              Text(snapshot.data.docs[0]['date'], style: TextStyle(fontSize: 20.0, color: Colors.green),),
                              SizedBox(width :40),
                              Text("₹", style: TextStyle(fontSize: 25.0),),
                              SizedBox(width :5),
                              Text(snapshot.data.docs[0]['amount'], style: TextStyle(fontSize: 20.0, color: Colors.redAccent),),
                              SizedBox(width :88),
                              Text(" ₹", style: TextStyle(fontSize: 25.0),),
                              Text(snapshot.data.docs[0]['balance'], style: TextStyle(fontSize:20.0, color: Colors.blue),),
                            ],
                          ),
                          SizedBox(height: 30.0),
                           Row(
                            children: <Widget>[
                              SizedBox(width :10),
                              Icon(Icons.calendar_today_rounded,),
                              SizedBox(width :20),
                              Text(snapshot.data.docs[1]['date'], style: TextStyle(fontSize: 20.0, color: Colors.green),),
                              SizedBox(width :40),
                              Text("₹", style: TextStyle(fontSize: 25.0),),
                              SizedBox(width :5),
                              Text(snapshot.data.docs[1]['amount'], style: TextStyle(fontSize: 20.0, color: Colors.redAccent),),
                              SizedBox(width :88),
                              Text("₹", style: TextStyle(fontSize: 25.0),),
                              Text(snapshot.data.docs[1]['balance'], style: TextStyle(fontSize: 20.0, color: Colors.blue),),
                            ],
                          ),
                          ],
                        ),
                      ),
                  ),
            ),
                ],
              ),
          );
        
        
      
      }),
    );
  }
}


/*
Column(
          children: <Widget>[
            Text(snapshot.data.docs[0]['name']),
            Text(snapshot.data.docs[0]['motto']),
          ],
        );
*/        

/* 
DataTable(
              columnSpacing: 17.0,
              sortAscending: true,
              columns: [
                DataColumn(label: Text("Date")),
                DataColumn(label: Text("amount")),
                
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text(snapshot.data.docs[0]['name']),),
                  DataCell(Text(snapshot.data.docs[0]['amount']),),
                 
                  
                ]),
                DataRow(cells: [
                  DataCell(Text(snapshot.data.docs[1]['name']),),
                  DataCell(Text(snapshot.data.docs[1]['amount']),),
                ]),
              ],
            );
*/