import 'package:flutter/material.dart';
//import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class GroupSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(150.0, 0.0, 0.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Search Bar Comes Here"),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, onPrimary: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text(
                "Find your Group",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
