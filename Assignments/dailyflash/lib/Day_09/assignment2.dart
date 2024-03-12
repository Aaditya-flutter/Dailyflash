// Create a ListView in which there are 8 children and each child must be a Column widget. In each Column you must have an Image in the Start(The image must be of width 80 and height 80) Besides the image there must be a Container with a text in the Center and a border to the Container.
// (Refer to the below image)

import 'package:flutter/material.dart';

class Assignment42 extends StatelessWidget {
  const Assignment42({super.key});

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
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 400,
            margin: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/core2web.jpeg",
                  height: 80,
                  width: 80,
                ),
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Core2web"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
