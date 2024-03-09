// Create a Screen, in the appBar display "Profile Information". In the body, display an image of size (height: 250, width: 250). Below the image add appropriate spacing and then display the user Name and Phone Number vertically. The name and phone number must have a font size of 16 and a font weight of 500.

import 'package:flutter/material.dart';

class Assignment21 extends StatelessWidget {
  const Assignment21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Information"),
        backgroundColor: const Color.fromARGB(255, 114, 75, 41),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/CoolCoder2.png",
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Name: Aaditya",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              "Phone: 9558142756",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
