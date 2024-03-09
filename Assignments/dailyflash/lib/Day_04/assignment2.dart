// Create an Elevated button in the Center of the Screen. Decorate the button as follows.
// a. The button must be of Circular Shape.
// b. The Size of the button must be (width: 200, height: 200).
// c. The buttom must have a border of color red.

import 'package:flutter/material.dart';

class Assignment17 extends StatelessWidget {
  const Assignment17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            surfaceTintColor: MaterialStatePropertyAll(Colors.amber),
            minimumSize: MaterialStatePropertyAll(Size(200, 200)),
            side: MaterialStatePropertyAll(
              BorderSide(
                width: 2,
                color: Colors.red,
              ),
            ),
          ),
          child: const Text(
            "Button",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
