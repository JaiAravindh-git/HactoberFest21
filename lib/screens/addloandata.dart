import 'package:flutter/material.dart';
import 'package:womenselfhelpgroup/services/crud.dart';
import 'package:cloud_firestore/cloud_firestore.dart';




class AddData2 extends StatefulWidget {
  AddData2({Key key}) : super(key: key);

  @override
  _AddData2State createState() => _AddData2State();
}

class _AddData2State extends State<AddData2> {
  
  String data;
  String amount;

  CrudMethods crudObj = new CrudMethods();

  @override
  Widget build(BuildContext context) {

    
    
    String data;
    String amount;
    String balance;
    var db = FirebaseFirestore.instance;
    
    
  addData(){

    Map<String,dynamic> demoData = {"date": data, "amount" : amount, "balance": balance};

    CollectionReference collectionReference = db.collection('loan');
    collectionReference.add(demoData);
  }
  

     return Scaffold(
       
       body: SafeArea(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               
               Container(
                 height: 250,
                 width: 500,
                 child: Image.asset('images/5.png')),
               
               //உங்கள் சேமிப்பு விவரங்களை உள்ளிடவும்
                Padding(
                  padding: const EdgeInsets.fromLTRB(30,0,0,0),
                  child: Text("உங்கள் கடன் விவரங்களை,",style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.bold, color: Colors.indigo[500] ),),
                ), 
                Padding(
                  padding: const EdgeInsets.fromLTRB(30,0,0,0),
                  child: Text("உள்ளிடவும்",style: TextStyle(fontSize: 30.0, fontWeight:FontWeight.bold, color: Colors.grey[600] ),),
                ),
                
               Padding(
                 padding: const EdgeInsets.fromLTRB(30,0,0,0),
                 child: Container(
                 width : 400,
                 height : 340,
                 child: Card(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(50,0,50,0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       SizedBox(height: 15.0),
                       Text("தேதி", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0,color: Colors.grey[600]),),
                       SizedBox(height: 5.0),
                       TextFormField(onChanged: (value) => data = value, decoration: InputDecoration(border: OutlineInputBorder(),),),
                       SizedBox(height: 5.0),
                       Text("கடன் தொகை (ரூபாயில்)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0,color: Colors.grey[600]),),
                       SizedBox(height: 5.0),
                       TextFormField(onChanged: (value) => amount = value, decoration: InputDecoration(border: OutlineInputBorder()), ),
                       SizedBox(height: 5.0),
                      Text("மீதி (ரூபாயில்)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0,color: Colors.grey[600]),),
                      TextFormField(onChanged: (value) => balance = value, decoration: InputDecoration(border: OutlineInputBorder(),),),
                       ElevatedButton(
                         onPressed: () {
                           addData();
                           Navigator.pushNamed(context, '/genled');
                           }, 
                         child: Text("தரவைப் பதிவேற்றுக"), 
                         style: ElevatedButton.styleFrom(
                         primary :Colors.indigo,
                       )),

                     ],
                   ),
                          ),
                 ),
         ),
               ),
             ],
           ),
       ),
     );
  }
}