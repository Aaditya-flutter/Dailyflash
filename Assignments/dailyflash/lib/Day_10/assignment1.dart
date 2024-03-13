// Create a Container that should resemble the following image.

import 'package:flutter/material.dart';

class Assignment46 extends StatelessWidget {
  const Assignment46({super.key});

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
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.blue,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
