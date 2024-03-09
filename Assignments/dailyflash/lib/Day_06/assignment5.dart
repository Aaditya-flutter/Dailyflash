// Create a Screen in which we have 3 Containers with size:(height: 100, width: 200) placed vertically. Each container must have a black border. Initially, the Color of the Containers must be white. The container that is tapped must change its color to red and other containers must be white.

import 'package:flutter/material.dart';

class Assignment30 extends StatefulWidget {
  const Assignment30({super.key});

  @override
  State<Assignment30> createState() => _Assignment30State();
}

class _Assignment30State extends State<Assignment30> {
  bool box1 = false;
  bool box2 = false;
  bool box3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Flash",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                box1 = !box1;
                setState(() {});
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: box1 ? Colors.red : Colors.white,
                  border: Border.all(),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                box2 = !box2;
                setState(() {});
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: box2 ? Colors.red : Colors.white,
                  border: Border.all(),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                box3 = !box3;
                setState(() {});
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: box3 ? Colors.red : Colors.white,
                  border: Border.all(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
