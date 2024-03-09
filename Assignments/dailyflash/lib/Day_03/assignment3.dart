// Add a container in the center of the screen with a size(width: 200, height: 200). Give a red border to the container. Now when the user taps the container change the color of the border to green.

import 'package:flutter/material.dart';

class Assignment13 extends StatefulWidget {
  const Assignment13({super.key});

  @override
  State<Assignment13> createState() => _Assignment13State();
}

class _Assignment13State extends State<Assignment13> {
  bool toggleBorder = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              toggleBorder = !toggleBorder;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 5,
                color: toggleBorder ? Colors.red : Colors.green,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
