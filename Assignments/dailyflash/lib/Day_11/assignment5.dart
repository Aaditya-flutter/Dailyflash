// Create a TextField which must take a certain height. Also, change the color of the cursor to red. The height of the text field must be given using the parameter present inside the Textfield i.e. do not use a sized box or any other widget to give size to the Textfield.

import 'package:flutter/material.dart';

class Assignment55 extends StatefulWidget {
  const Assignment55({super.key});

  @override
  State<Assignment55> createState() => _Assignment55State();
}

class _Assignment55State extends State<Assignment55> {
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
            cursorColor: Colors.red,
            maxLines: 5,
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
