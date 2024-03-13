// Cerate a Container that should resemble the following image.

import 'package:flutter/material.dart';

class Assignment49 extends StatelessWidget {
  const Assignment49({super.key});

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
            boxShadow: [
              BoxShadow(
                offset: Offset(8, 6),
                color: Colors.red,
              ),
            ],
            gradient: LinearGradient(
              stops: [
                0.0,
                0.4,
              ],
              colors: [
                Colors.blue,
                Colors.purple,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
