import 'package:chapter3_navigation/pages/first_page.dart';
import 'package:chapter3_navigation/pages/home_page.dart';
import 'package:chapter3_navigation/pages/setting_page.dart';
import 'package:chapter3_navigation/pages/third_page.dart';
import 'package:flutter/material.dart';

import 'pages/fourth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        "/thirdpage": (context) => ThirdPage(),
        "/home": (context) => HomePage(),
        "/setting": (context) => SettingsPage(),
        "/fourthpage": (context) => FourthPage(),
      },
    );
  }
}
