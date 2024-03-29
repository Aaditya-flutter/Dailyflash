// Create a Screen that will display 3 containers in a Row, the first container must be of height 100 and width 100, the 2nd container must be of height 80 and width 80, and 3rd Container must be of height 70 and width 80. Give color to the containers as per your choice.

import 'package:flutter/material.dart';

class Assignment31 extends StatelessWidget {
  const Assignment31({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Daily Flash",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.orange,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.purple,
            ),
            Container(
              height: 70,
              width: 80,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
