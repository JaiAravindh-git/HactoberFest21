import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:womenselfhelpgroup/screens/groupselect.dart';
import 'screens/generalledger.dart';
import 'screens/loandetails.dart';
import 'screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginScreen(),
        '/loan': (context) => LoanDetails(),
        '/genled': (context) => GenLed(),
        '/groupselect': (context) => GroupSelect(),
      },
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List listOfPages = [
    LoanDetails(),
    GenLed(),
    Center(child: Icon(Icons.monetization_on)),
    Center(child: Icon(Icons.monetization_on)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("மகளிர் சுய உதவி குழு"),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Savings',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Colors.greenAccent,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Loan',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Colors.green,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('NIL'),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.greenAccent,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('NIL'),
            activeColor: Colors.greenAccent,
            inactiveColor: Colors.black,
          )
        ],
      ),
      body: listOfPages[currentIndex],
    );
  }
}
