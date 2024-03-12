// Create a ListView but the Listview must be scrollable in a horizontal direction. The Listview must contain 5 children. Each child must be a Container widget of height 60 and width 60, giving color to the container.

import 'package:flutter/material.dart';

class Assignment41 extends StatelessWidget {
  const Assignment41({super.key});

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
      body: Container(
        height: 60,
        width: 400,
        margin: const EdgeInsets.all(10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.red,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.yellow,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.green,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
