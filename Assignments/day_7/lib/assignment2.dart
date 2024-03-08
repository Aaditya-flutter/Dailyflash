// Create a Screen that displays an `Icon` widget representing a star the size of the icon must be 40 and the color of the icon must be orange, beside the icon place a `Text` widget with the content "Rating: 4.5". Apply a font size of 25 and bold weight to the text. Refer to below image.

import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Daily Flash",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 80,
          width: 250,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.orange,
                size: 40,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Rating: 4.5",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
