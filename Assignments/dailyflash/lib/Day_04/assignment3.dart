// Create a Screen and then add a floating action button. In this button, you will have to display your name and an Icon which must be placed in a row.

import 'package:flutter/material.dart';

class Assignment18 extends StatelessWidget {
  const Assignment18({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Row(
          children: [
            Text(
              "Aaditya",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
