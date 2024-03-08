// In the previous question now take 3 rows, the first row must be the same. In 2nd Row place 3 Containers the space taken by them must be in a ratio of 5:4:1 and The 3 containers in last row must take space in a ratio of 7:2:1, Each Container must have a height of 100 and must have a color of your choice. Don not specify the width of the container.

import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Daily Flash",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.57 * 6,
                  ),
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.57 * 3,
                  ),
                  height: 100,
                  color: Colors.purple,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.57,
                  ),
                  height: 100,
                  color: Colors.green,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.57 * 5,
                  ),
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.57 * 4,
                  ),
                  height: 100,
                  color: Colors.purple,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.57,
                  ),
                  height: 100,
                  color: Colors.green,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.57 * 7,
                  ),
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.57 * 2,
                  ),
                  height: 100,
                  color: Colors.purple,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.57,
                  ),
                  height: 100,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// This is not a generic code