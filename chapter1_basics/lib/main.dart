import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  //to print
  print("hello");
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  //variables
  String name = "nothing";
  int age = 23;
  double pi = 3.14;
  bool isBegineer = false;

  //basic math operators:
  //1+1->2
  //1-1->0
  //1*1->1
  //1/1->1
  //1%1->0
  //1++->1
  //1-- ->0

  //comparison operators:
  // ==
  // >=
  // <=
  // !=
  //>
  //<

  // logical operators
  // AND (&&) -> returns true if both sides are true
  // OR (||) -> returns true if atleast one side is true
  // not (!) -> returns the oppposite value

  //control flow:
  //if statements
  //if-else statements
  //if-else if-else statements
  //switch statements

  //loops
  //for loop
  //for(initialization;condition;iteration){
  //  do something
  //}
  //while(condition){
  //}

  //function / method
  void greet() {
    print("hello greetings");
  }

  //function with parameters:
  void greetings(String name, int age) {
    print("hello" + name + "as well ur age is");
    print(age);
  }

  //function with return type
  int sum(int a, int b) {
    int sum = a + b;
    return sum;
  }

  //data structures:
  List numbers = [1, 2, 3, 4];
  // void print(number) {
  //   for (int i = 0; i < numbers.length; i++) {
  //     print("nothing");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    print(name);
    if (age == 18) {
      print("you are eligible for vote");
    } else if (age == 23) {
      print("you are not eligible");
    } else {
      print("you not a thing");
    }
    switch (age) {
      case > 18:
        print("nothing ......");
        break;
      default:
        print("end");
    }
    for (int i = 0; i < 89; i++) {
      if (i == 0) {
        print(i);
        break;
      }
    }
    int count = 4;

    while (count-- > 0) {
      print(count);
    }
    greet();
    greetings("zero", 9999);
    int ans = sum(10, 10);
    print(ans);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
