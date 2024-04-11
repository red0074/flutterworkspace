import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  //textcontroller to access what the user had typed
  TextEditingController mycontroller = TextEditingController();
  //greetingmessage
  String greetingmessage = "";
  //method to greet the use
  void greeting() {
    print(mycontroller.text);
  }

  //method to greet user on screen
  void greet() {
    setState(() {
      greetingmessage = "hello , " + mycontroller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("user input")),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greeting message
              Text(greetingmessage),
              //enter the data
              TextField(
                controller: mycontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "enter your name"),
              ),
              SizedBox(
                height: 25,
              ),
              //button to print in the console
              ElevatedButton(onPressed: greeting, child: Text("tap")),
              //button to print on the screen\
              ElevatedButton(onPressed: greet, child: Text("submit")),
            ],
          ),
        ),
      ),
    );
  }
}
