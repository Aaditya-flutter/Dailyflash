// Create a TextField which must have a rectangular border. Initially, the border color of the TextField must be red but when we tap on the TextField the border color must turn green.

import 'package:flutter/material.dart';

class Assignment51 extends StatefulWidget {
  const Assignment51({super.key});

  @override
  State<Assignment51> createState() => _Assignment51State();
}

class _Assignment51State extends State<Assignment51> {
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
          padding: EdgeInsets.all(30.0),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
