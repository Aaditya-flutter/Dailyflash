// Add a container with the color red and display the text "Click me!" in the center of the container. On tapping the container, the text must change to "Container Tapped" and the color of the container must change to blue.

import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State createState() => _Assignment5State();
}

class _Assignment5State extends State {
  bool color = true;
  bool text = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              color = !color;
              text = !text;
            });
          },
          child: Container(
            width: 250,
            height: 250,
            alignment: Alignment.center,
            color: color ? Colors.red : Colors.blue,
            child: Text(
              text ? "Click me!" : "Container Tapped",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
