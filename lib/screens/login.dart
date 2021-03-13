import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "மகளிர் சுய உதவி குழு",
          style: TextStyle(
            fontSize: 40.0,
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
          height: 20.0,
        ),
        SizedBox(
          width: 150.0,
          height: 50.0,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Get OTP",
              style: TextStyle(fontSize: 20.0),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.green, onPrimary: Colors.white),
          ),
        ),
      ],
    );
  }
}
