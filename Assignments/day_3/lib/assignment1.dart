// Create a Container in the Center of the Screen with size(width: 300, height: 300) and display an image in the center of the Container. Apply appropriate padding to the container.

import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: const EdgeInsets.all(5),
          alignment: Alignment.center,
          color: Colors.amber,
          child: Image.asset("assets/images/CoolCoder2.png"),
        ),
      ),
    );
  }
}
