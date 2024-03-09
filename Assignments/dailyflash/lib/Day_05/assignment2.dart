// Create a Screen in which we have 3 Containers in a Column each container must be of height 100 and width 100. Each container must have an image as a child.

import 'package:flutter/material.dart';

class Assignment22 extends StatelessWidget {
  const Assignment22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dailyflash: Assignment2"),
        backgroundColor: const Color.fromARGB(255, 114, 75, 41),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.blue,
                    Colors.white,
                  ],
                ),
              ),
              child: Image.asset(
                "assets/images/squrtle.png",
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.green,
                    Colors.white,
                  ],
                ),
              ),
              child: Image.asset(
                "assets/images/bulbasaur.png",
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.orange,
                    Colors.white,
                  ],
                ),
              ),
              child: Image.asset(
                "assets/images/charmender.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
