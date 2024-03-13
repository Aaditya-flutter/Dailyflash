// Create the following Screen.

import 'package:flutter/material.dart';

class Assignment50 extends StatelessWidget {
  const Assignment50({super.key});

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
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: Offset(6, 6),
                color: Colors.red,
              ),
            ],
            gradient: LinearGradient(
              stops: [
                0.0,
                0.4,
                0.9,
              ],
              colors: [
                Colors.blue,
                Colors.purple,
                Colors.green,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
