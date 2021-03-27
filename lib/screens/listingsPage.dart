import 'package:flutter/material.dart';

class ListingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 300.0,
                width: 300.0,
                child: Image.asset("images/12.png")),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,70,0,0),
                child: Text("நல்ல செயல்திறன் கொண்ட பெண்கள் சுய உதவிக்குழுக்கள்", style: TextStyle(fontSize : 30.0),),
              ),
              SizedBox(height : 30.0),
              Column(
                children: [
                  Card(
                    child: Row(children: [
                      Text("சுய உதவிக்குழுக்கள் 1"),
                      SizedBox(width: 20.0),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star_border_outlined)
                    ],),
                  ),
                  Card(
                    child: Row(children: [
                      Text("சுய உதவிக்குழுக்கள் 2"),
                      SizedBox(width: 20.0),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star_border_outlined),
                      Icon(Icons.star_border_outlined),
                      Icon(Icons.star_border_outlined)
                    ],),
                  ),
                  Card(
                    child: Row(children: [
                      Text("சுய உதவிக்குழுக்கள் 3"),
                      SizedBox(width: 20.0),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star_border_outlined),
                      Icon(Icons.star_border_outlined)
                    ],),
                  ),
                  Card(
                    child: Row(children: [
                      Text("சுய உதவிக்குழுக்கள் 4"),
                      SizedBox(width: 20.0),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star_border_outlined),
                      Icon(Icons.star_border_outlined),
                      Icon(Icons.star_border_outlined)
                    ],),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}