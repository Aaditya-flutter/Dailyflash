// Create a TextField which must have a rectangular border and at the end of the TextField initially display a lock Icon. When we tap the TextField 2 icons must be displayed at the end of the textfield i.e. a lock icon and a search icon.

import 'package:flutter/material.dart';

class Assignment52 extends StatefulWidget {
  const Assignment52({super.key});

  @override
  State<Assignment52> createState() => _Assignment52State();
}

class _Assignment52State extends State<Assignment52> {
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
              suffixIcon: Icon(Icons.lock),
              suffix: Icon(Icons.search),
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
