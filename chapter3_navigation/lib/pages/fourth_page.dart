import 'package:chapter3_navigation/pages/first_page.dart';
import 'package:chapter3_navigation/pages/home_page.dart';
import 'package:chapter3_navigation/pages/setting_page.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  //method that helps to update the page
  void _navigationbar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //keep the track of current page
  int _selectedIndex = 0;

  //list of all pages
  final List _pages = [
    //homepage
    HomePage(),
    //personpage
    FirstPage(),
    //settingspage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("bottom navigation")),
        backgroundColor: Colors.purple[600],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationbar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "PERSON"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "SETTINGS"),
        ],
      ),
    );
  }
}
