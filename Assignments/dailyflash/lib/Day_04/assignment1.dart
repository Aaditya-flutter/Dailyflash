// Create an ElevatedButton, in the centre of the screen. The button must have rounded edges. Give a shadow of color red to the button.

import 'package:flutter/material.dart';

class Assignment16 extends StatelessWidget {
  const Assignment16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            minimumSize: MaterialStatePropertyAll(Size(100, 60)),
            shadowColor: MaterialStatePropertyAll(Colors.red),
          ),
          child: const Text("Button"),
        ),
      ),
    );
  }
}
