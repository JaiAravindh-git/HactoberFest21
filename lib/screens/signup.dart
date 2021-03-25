import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  
  
  TextEditingController _emailController;
  TextEditingController _passwordController;
  String _email, _password;
  
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 900,
          width: 400,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50.0, 35.0 , 10.0, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('images/3.png'),
                      Text("இப்போது,",style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.bold, color: Colors.grey[600] ),), 
                      Text("பதிவு செய்யுங்கள்",style: TextStyle(fontSize: 30.0, fontWeight:FontWeight.bold, color: Colors.grey[600] ),),
                    ],
                  ),
                ),

                SizedBox(height : 13.0),
                  Card(
                    child: Column(
                    
                    children: [
                      SizedBox(height : 20.0),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,170,0),
                        child: Text("மின்னஞ்சல்", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0,color: Colors.grey[600]),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30,10,30,0),
                        child: TextFormField(
                          decoration: InputDecoration(border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.login_outlined)),
                          
                          onChanged: (value) => _email = value,
                        ),
                      ),
                      SizedBox(height : 10.0),
                       Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,170,0),
                        child: Text("கடவுச்சொல்", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0, color: Colors.grey[600]),),
                      ),
                      SizedBox(height : 10.0),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30,0,30,0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.shield),
                          fillColor: Colors.green),
                          onChanged: (value)  => _password = value,
                        ),
                      ),
                      SizedBox(height : 10.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink[300],
                        ),
                        child: Text("பதிவுபெறுக"),
                        onPressed: () async{
                          try{
                            final user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
                            if(user!= null){
                              Navigator.pushNamed(context, '/login');
                            }
                           }
                          catch(e){
                              print(e);
                          }
                      },),
                       SizedBox(height : 10.0),
                    ],
                  ),
                ),
                
             
              ],
            ),
          ),
        ),
      ),
    );
  }
}