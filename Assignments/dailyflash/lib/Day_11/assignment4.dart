// Create a Textfield and display the hint as shown in the image, also allow the user to type 20 characters only and display the count of the characters.

import 'package:flutter/material.dart';

class Assignment54 extends StatefulWidget {
  const Assignment54({super.key});

  @override
  State<Assignment54> createState() => _Assignment54State();
}

class _Assignment54State extends State<Assignment54> {
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
            maxLength: 20,
            decoration: InputDecoration(
              labelText: "Enter your name",
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
