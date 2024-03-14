// Create a text field and give amber color to the text field and also display a hint text in the center of the text field.

import 'package:flutter/material.dart';

class Assignment53 extends StatefulWidget {
  const Assignment53({super.key});

  @override
  State<Assignment53> createState() => _Assignment53State();
}

class _Assignment53State extends State<Assignment53> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Flash",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "                    Enter your name",
              filled: true,
              fillColor: Colors.amber,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
