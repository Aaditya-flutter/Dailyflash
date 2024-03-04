// Create a Container with size(height: 200, width: 300) now give a shadow to the container but the shadow must only be at the top side of the container.

import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.purple,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
