import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:womenselfhelpgroup/screens/WelcomePage.dart';
import 'package:womenselfhelpgroup/screens/adddata.dart';
import 'package:womenselfhelpgroup/screens/addloandata.dart';
import 'package:womenselfhelpgroup/screens/fetchData.dart';
import 'package:womenselfhelpgroup/screens/fetchdata2.dart';
import 'package:womenselfhelpgroup/screens/groupselect.dart';
import 'package:womenselfhelpgroup/screens/loginpage.dart';
import 'package:womenselfhelpgroup/screens/signup.dart';
import 'screens/generalledger.dart';
import 'screens/loandetails.dart';
//import 'screens/login.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_auth/firebase_auth.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/welcome',
      routes: {
        '/welcome' : (context) => WelcomePage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/loan': (context) => LoanDetails(),
        '/genled': (context) => GenLed(),
        '/groupselect': (context) => GroupSelect(),
        '/fetchdata':(context) => FetchData(),
        '/fetchdata2' : (context) =>FetchData2(),
        '/addData': (context) => AddData(),
        '/addData2' : (context) =>AddData2(),
        '/signup' : (context) => SignUpPage(),
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
  
  FlutterLocalNotificationsPlugin fltrNotification;
  
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("completed");
      setState(() {});
    });
  }

  int currentIndex = 0;

  List listOfPages = [
    LoanDetails(),
    GenLed(),
    Text("Loan")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.payment_outlined),
            title: Text(
              'கடன்',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Colors.indigo,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notes_rounded),
            title: Text(
              'சேமிப்பு',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Colors.green,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'payement',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Colors.green,
            inactiveColor: Colors.black,
          ),
          
          
        ],
      ),
      body: listOfPages[currentIndex],
    );
  }
}
