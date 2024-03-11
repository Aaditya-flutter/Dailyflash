// Create the Screen and try to replicate the below image.

import 'package:flutter/material.dart';

class Assignment38 extends StatelessWidget {
  const Assignment38({super.key});

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 70,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(width: 2),
                  right: BorderSide(width: 2),
                  top: BorderSide(),
                  bottom: BorderSide(),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
