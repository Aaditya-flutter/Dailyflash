// Create the following screen:

import 'package:flutter/material.dart';

class Assignment47 extends StatelessWidget {
  const Assignment47({super.key});

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
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.6,
                1,
              ],
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
