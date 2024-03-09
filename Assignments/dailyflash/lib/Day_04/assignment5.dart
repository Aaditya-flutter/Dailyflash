// Create a screen and add a floatingAction button. Place the floating action button in the botttom center of the screen. When the button is long pressed the color of the button must change to purple.

import 'package:flutter/material.dart';

class Assignment20 extends StatefulWidget {
  const Assignment20({super.key});

  @override
  State<Assignment20> createState() => _Assignment20State();
}

class _Assignment20State extends State<Assignment20> {
  bool fabColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  fabColor = !fabColor;
                });
              },
              backgroundColor: fabColor ? Colors.purple : Colors.amber,
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
