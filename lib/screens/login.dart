//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
/*
 Future<bool> loginUser(String phone, BuildContext context) async {
    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
      phoneNumber: phone,
      timeout: Duration(seconds: 60),
      verificationCompleted: (AuthCredential credential) async {
         result = await _auth.signInWithCredential(credential);

         user = result.user;

        if (user != null) {
          Navigator.pushNamed(context, '/home');
        }
      },
      verificationFailed: (FirebaseAuthException execption) {
        print(execption);
      },
      codeSent: (String verificationId, [int forceSendingToken]) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Give the code"),
                content: Column(
                  children: <Widget>[
                    TextField(controller: ,),
                  ],
                ),
              );
            });
      },
      codeAutoRetrievalTimeout: null,
    );
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/logo.png'),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "மகளிர் சுய உதவி குழு",
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "உள்நுழைய",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'தொலைபேசி எண்ணை உள்ளிடவும்',
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          SizedBox(
            width: 150.0,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/groupselect');
              },
              child: Text(
                "Get OTP",
                style: TextStyle(fontSize: 20.0),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, onPrimary: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
