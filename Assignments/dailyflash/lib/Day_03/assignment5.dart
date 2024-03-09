// Create a Circular Container and give the Container 2 colors i.e. red and blue, 50% of the contaier must contain red and the other 50% must contain blue color.
// (Note: The transition from the Red color to blue must be sharp)
// Refer given image

import 'package:flutter/material.dart';

class Assignment15 extends StatelessWidget {
  const Assignment15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              stops: [
                0.5,
                0.5,
              ],
              colors: [
                Colors.red,
                Colors.blue,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
