// Create a Screen and add your image in the center of the screen below your image display your name in a container, , give a shadow to the Container and give a border to the container the top left and top right corners must be circular, with a radius of 20. Add appropriate padding to the container.

import 'package:flutter/material.dart';

class Assignment23 extends StatelessWidget {
  const Assignment23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dailyflash: Assignment_3"),
        backgroundColor: const Color.fromARGB(255, 114, 75, 41),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/CoolCoder2.png",
              height: 250,
              width: 250,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 118, 57, 21),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    color: Color.fromARGB(255, 118, 57, 21),
                  )
                ],
              ),
              child: const Text(
                "Name: Aaditya-flutter",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
