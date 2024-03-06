import 'package:flutter/material.dart';
// import 'package:day_5/assignment1.dart';
// import 'package:day_5/assignment2.dart';
// import 'package:day_5/assignment3.dart';
// import 'package:day_5/assignment4.dart';
import 'package:day_5/assignment5.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Assignment1(),
      // home: Assignment2(),
      // home: Assignment3(),
      // home: Assignment4(),
      home: Assignment5(),
    );
  }
}
