import 'package:chapter3_navigation/pages/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("using navigator.push")),
        backgroundColor: Colors.purple[600],
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //navigate to second page
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ));
            },
            child: Text("moving to second page")),
      ),
    );
  }
}
