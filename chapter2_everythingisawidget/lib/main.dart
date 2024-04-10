import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["nothing", "nothing0", "nothing1"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Center(child: Text("Everything is a widget")),
        //   leading: Icon(Icons.menu), //icon for left side
        //   actions: [
        //     IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
        //   ], //icon for right side
        //   backgroundColor: Colors.blue,
        // ),
        // backgroundColor: Colors.purple[600], // commented because of the column widget
        // body: Center(
        //   child: Container(
        //     height: 350,
        //     width: 350,
        //     padding: EdgeInsets.all(25),
        //     decoration: BoxDecoration(
        //       color: Colors.pink,
        //       borderRadius: BorderRadius.circular(75),
        //     ),
        //     // child: Text(
        //     //   "nothing",
        //     //   style: TextStyle(
        //     //     fontSize: 35,
        //     //     fontWeight: FontWeight.bold,
        //     //     color: Colors.white,
        //     //   ),
        //     // ),
        //     child: Icon(
        //       Icons.headphones,
        //       size: 135,
        //     ),
        //   ),
        // ),
        //for cloumn widget
        // body: ListView(
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   // mainAxisAlignment: MainAxisAlignment.end,
        //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   // crossAxisAlignment: CrossAxisAlignment.start,
        //   // crossAxisAlignment: CrossAxisAlignment.end,
        //   // crossAxisAlignment: CrossAxisAlignment.center,

        //   //list view
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     // //1st box
        //     // Expanded(
        //     //   flex: 2,
        //     //   child: Container(
        //     //     // height: 250,
        //     //     // width: 250,
        //     //     color: Colors.purple[100],
        //     //     child: Center(child: Text("1")),
        //     //   ),
        //     // ),
        //     // //2nd box
        //     // Expanded(
        //     //   flex: 3,
        //     //   child: Container(
        //     //     // height: 250,
        //     //     // width: 250,
        //     //     color: Colors.purple[200],
        //     //     child: Center(child: Text("2")),
        //     //   ),
        //     // ),
        //     // //3rd box
        //     // Expanded(
        //     //   flex: 4,
        //     //   child: Container(
        //     //     // height: 250,
        //     //     // width: 250,
        //     //     color: Colors.purple[300],
        //     //     child: Center(child: Text("3")),
        //     //   ),
        //     // ),
        //     //example of listview
        //     //1stbox
        //     Container(
        //       // height: 350,
        //       width: 350,
        //       color: Colors.pink[600],
        //     ),
        //     Container(
        //       // height: 350,
        //       width: 350,
        //       color: Colors.pink[500],
        //     ),
        //     Container(
        //       // height: 350,
        //       width: 350,
        //       color: Colors.pink[100],
        //     ),
        //   ],
        // ),

        //for listview builder
        // body: ListView.builder(
        //     itemCount: names.length,
        //     itemBuilder: (context, value) => ListTile(
        //           title: Text(names[value]),
        //         )),

        //gridview
        // body: GridView.builder(
        //   itemCount: 65,
        //   gridDelegate:
        //       //how many boxs in each row
        //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        //   itemBuilder: (context, index) => Container(
        //     color: Colors.pink[600],
        //     margin: EdgeInsets.all(10),
        //   ),
        // ),

        //stack
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              //big
              Container(
                height: 300,
                width: 300,
                color: Colors.pink,
              ),
              //medium
              Container(
                height: 200,
                width: 200,
                color: Colors.pink[100],
              ),
              //small
              Container(
                height: 100,
                width: 100,
                color: Colors.pink[200],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
