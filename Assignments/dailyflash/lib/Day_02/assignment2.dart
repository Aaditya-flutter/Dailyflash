// In the screen add a container of size(width: 100, height: 100) that must only have a left border of width 5 and color as per your choice. Give padding to the container and display a text in the Container.

import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.yellow),
              bottom: BorderSide(color: Colors.yellow),
              right: BorderSide(color: Colors.yellow),
              left: BorderSide(
                width: 5,
                color: Colors.amber,
              ),
            ),
          ),
          child: const Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
