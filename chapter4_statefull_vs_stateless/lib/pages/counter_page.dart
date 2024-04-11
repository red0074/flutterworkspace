import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;
  //method
  //method for increment
  void _increment() {
    //rebuild the widget without this w ecan't see the counter increment when increment button is pressed
    setState(() {
      _counter++;
    });
  }

  //method for clearing the counter
  void _clear() {
    setState(() {
      _counter = 0;
    });
  }

  //ui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("counter page")),
        backgroundColor: Colors.pink[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("you had pressed the counter :"),
            //todisplay the counter
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            //to increment the counter
            ElevatedButton(onPressed: _increment, child: Text("increment")),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(onPressed: _clear, child: Text("Clear"))
          ],
        ),
      ),
    );
  }
}
