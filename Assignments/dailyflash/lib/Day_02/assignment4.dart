// Create a container that will have a border. The top right and bottom left corners of the border must be rounded. Now display the Text in the Container and give appropriate padding to the container.
// Refer to the given image:

import 'package:flutter/material.dart';

class Assignment9 extends StatelessWidget {
  const Assignment9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 100,
          padding: const EdgeInsets.only(
            left: 20,
            top: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.red[100],
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            border: Border.all(color: Colors.red),
          ),
          child: const Text(
            "Aaditya Assalkar",
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
