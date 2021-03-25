//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:womenselfhelpgroup/screens/WelcomePage.dart';

class GenLed extends StatefulWidget {
  @override
  _GenLedState createState() => _GenLedState();
}

class _GenLedState extends State<GenLed> {
 
 
 
  
  @override
  Widget build(BuildContext context) {
    /*
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
   */
  //final db = FirebaseFirestore.instance;
  
  /*
  addData(){

    Map<String,dynamic> demoData = {"name": "The Growing Devleoper", "motto" : "Learn and Grow"};

    CollectionReference collectionReference = db.collection('data');
    collectionReference.add(demoData);
  }
  */



    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,40,0,0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(330,0,0,0),
                      child: ElevatedButton(
                        style : ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        onPressed: (){
                        FirebaseAuth.instance.signOut();
                        Navigator.pushNamed(context, '/welcome');
                      }, child: Icon(Icons.logout)),
                    ),
                   Image.asset('images/6.png'),
                   Text('''உங்கள் சேமிப்பு விவரங்களை ''', style: TextStyle(fontSize:30.0),),
                   Text('''ஆன்லைனில் சேமிக்கவும் ''',style: TextStyle(fontSize:30.0)),
                   Text('''பிறகு விரும்பியபோது தரவைப் பெறுங்கள்''',style: TextStyle(fontSize:30.0)),
                   SizedBox(height : 60.0),
                   ElevatedButton(
                     style : ElevatedButton.styleFrom(
                       primary: Colors.pink[300],
                     ),
                     onPressed: (){Navigator.pushNamed(context, '/addData');}, child: Text("தரவைச் சேர்க்கவும்",style: TextStyle(fontSize: 20.0),)),
                   SizedBox(height : 20.0),
                   ElevatedButton(
                     style : ElevatedButton.styleFrom(
                       primary: Colors.green[300],
                     ),
                     onPressed: (){Navigator.pushNamed(context, '/fetchdata');}, child: Text("தரவைப் பெறுங்கள்",style: TextStyle(fontSize: 20.0),)),
                  
                  ],
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
