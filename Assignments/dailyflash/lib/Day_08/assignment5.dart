// Create a screen and display a Listview having a count of 10.
// The child of the Listview must be a container which must display a title and a description on top of each other and next to them display an Icon in a circular container.

import 'package:flutter/material.dart';

class Assignment40 extends StatefulWidget {
  const Assignment40({super.key});

  @override
  State<Assignment40> createState() => _Assignment40State();
}

class _Assignment40State extends State<Assignment40> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
        ),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      top: 8,
                      bottom: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Give some description here",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.purple,
                    ),
                    child: const Icon(Icons.access_alarm_rounded),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
