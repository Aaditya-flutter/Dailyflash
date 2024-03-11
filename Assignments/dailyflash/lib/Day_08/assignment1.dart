// Create a Screen and try to replicate the provided diagram. Customize the UI to include containers with different colors, providing each container with appropriate width and height dimensions as shown. Ensure proper margins as depicted in the provided diagram, using colors and dimensions of your choice.

import 'package:flutter/material.dart';

class Assignment36 extends StatelessWidget {
  const Assignment36({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue[100],
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(25),
                height: 200,
                width: 150,
                color: Colors.amber[200],
              ),
              Container(
                margin: const EdgeInsets.all(25),
                height: 200,
                width: 150,
                color: Colors.red[300],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(25),
            height: 200,
            width: 400,
            color: Colors.green[400],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(25),
                height: 200,
                width: 150,
                color: const Color.fromARGB(179, 143, 31, 163),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                height: 200,
                width: 150,
                color: const Color.fromARGB(255, 150, 166, 255),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
