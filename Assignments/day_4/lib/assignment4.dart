// Add a floating action button on the screen and when we hover over the button the color of the button must become orange.

import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        hoverColor: Colors.orange,
      ),
    );
  }
}
