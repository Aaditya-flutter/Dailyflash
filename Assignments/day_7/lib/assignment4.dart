// Create a Screen in which we have 3 containers placed in a Row, the space taken by the containers must be in proportion 6:3:1, The container must have a height of 100 don't give width to the Container.

import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

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
              padding: const EdgeInsets.symmetric(
                horizontal: 20.57 * 6,
              ),
              height: 100,
              color: Colors.red,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.57 * 3,
              ),
              height: 100,
              color: Colors.purple,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.57,
              ),
              height: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

// This is not a generic code