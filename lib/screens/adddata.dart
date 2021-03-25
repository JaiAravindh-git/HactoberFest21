import 'package:flutter/material.dart';
import 'package:womenselfhelpgroup/services/crud.dart';
import 'package:cloud_firestore/cloud_firestore.dart';




class AddData extends StatefulWidget {
  AddData({Key key}) : super(key: key);

  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  
  String data;
  String amount;

  CrudMethods crudObj = new CrudMethods();

  @override
  Widget build(BuildContext context) {

    
    
    String data;
    String amount;
    var db = FirebaseFirestore.instance;
    
    
  addData(){

    Map<String,dynamic> demoData = {"date": data, "amount" : amount};

    CollectionReference collectionReference = db.collection('savings');
    collectionReference.add(demoData);
  }
  

     return Scaffold(
       
       body: SafeArea(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 20.0),
               Container(
                 height: 250,
                 width: 500,
                 child: Image.asset('images/4.png')),
               
               //உங்கள் சேமிப்பு விவரங்களை உள்ளிடவும்
                Padding(
                  padding: const EdgeInsets.fromLTRB(30,0,0,0),
                  child: Text("உங்கள் சேமிப்பு விவரங்களை,",style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.bold, color: Colors.indigo[500] ),),
                ), 
                Padding(
                  padding: const EdgeInsets.fromLTRB(30,0,0,0),
                  child: Text("உள்ளிடவும்",style: TextStyle(fontSize: 30.0, fontWeight:FontWeight.bold, color: Colors.grey[600] ),),
                ),
                SizedBox(height: 20.0),
               Padding(
                 padding: const EdgeInsets.fromLTRB(30,0,0,0),
                 child: Container(
                 width : 400,
                 height : 300,
                 child: Card(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(50,0,50,0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       SizedBox(height: 30.0),
                       Text("தேதி", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0,color: Colors.grey[600]),),
                       SizedBox(height: 10.0),
                       TextFormField(onChanged: (value) => data = value, decoration: InputDecoration(border: OutlineInputBorder(),),),
                       SizedBox(height: 10.0),
                       Text("சேமிப்பு தொகை (ரூபாயில்)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0,color: Colors.grey[600]),),
                       SizedBox(height: 10.0),
                       TextFormField(onChanged: (value) => amount = value, decoration: InputDecoration(border: OutlineInputBorder()), ),
                       SizedBox(height: 10.0),
                       ElevatedButton(
                         onPressed: () {
                            addData();
                            
                         } ,
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