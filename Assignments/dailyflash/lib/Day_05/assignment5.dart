// Create a Screen that displays 3 widgets in a Column. The image must be the first widget, the next widget must a Container of color red and the 3rd widget must be a Container of color blue. Place all the 3 widgets in a Column.
// The Image must be placed at the top center and the other 2 widgets must be placed at the bottom center of the screen.

import 'package:flutter/material.dart';

class Assignment25 extends StatelessWidget {
  const Assignment25({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dailyflash: Assignment_5"),
        backgroundColor: const Color.fromARGB(255, 114, 75, 41),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/download.jpeg"),
            const Spacer(),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
