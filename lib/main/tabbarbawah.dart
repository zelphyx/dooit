import 'package:dooit/main/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dooit/empty/explore.dart';
import '../empty/accdetail.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    homepage(),
    explore(),
    acc()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric( vertical: 1.0),
        child:
      Column(
        children: [
          Expanded(
            child: _pages[_currentIndex], 
          ),
          BottomNavigationBar(
            selectedItemColor: Colors.blue,

            currentIndex: _currentIndex, 
            onTap: (index) {
              setState(() {
                _currentIndex = index; 
              });
            },
            items: [
              BottomNavigationBarItem(

                icon: Icon(Icons.home), 
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore), 
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), 
                label: 'Account',
              ),

            ],

          ),

        ],
      ),
      )
    );
  }
}
