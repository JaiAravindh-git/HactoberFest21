import 'package:flutter/material.dart';

const _textStyle = TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold );

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: Column(
          children : [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, '/listings');
                  }, child: Icon(Icons.list_alt),),
                  
                  
                ],
              ),
            ),
            Container(
              height: 500.0,
              child: Image.asset('images/1.png')),
             SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0,0,270,0),
              child: Text("தொடங்கவும்", style:  TextStyle(color: Colors.grey[500], fontSize: 20.0),),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.stretch,
                children: [
                  
                Text("உங்கள் கணக்குகளை", style: _textStyle,),
                Text("டிஜிட்டல் முறையில்", style : _textStyle),
                Text("வீட்டிலிருந்து நிர்வகிக்கவும்", style: _textStyle,),
              ],),
            ), 
           SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0,0.0,50.0,30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink[300],
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/signup');
                }, child: Text("பதிவுபெறுக", style: TextStyle(fontSize : 15.0),)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.greenAccent[400],
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/login');
                }, child: Text("உள்நுழைய", style: TextStyle(fontSize : 15.0),)),
              ],),
            )
          
          ]
          
        ),

      ),
    );
  }
}