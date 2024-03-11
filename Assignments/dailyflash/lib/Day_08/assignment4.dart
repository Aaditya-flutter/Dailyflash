// Display a ListView in the ListView display to Children such that each child must be a Container having a circular image in the beginning and next to the image display the Text. Give a border to the container.
// Refer to the image for creating the child:

import 'package:flutter/material.dart';

class Assignment39 extends StatefulWidget {
  const Assignment39({super.key});

  @override
  State<Assignment39> createState() => _Assignment39State();
}

class _Assignment39State extends State<Assignment39> {
  List imageList = [
    "assets/images/food1.jpeg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
    "assets/images/food4.jpg",
    "assets/images/food5.jpg",
    "assets/images/food6.jpg",
    "assets/images/food7.jpeg",
    "assets/images/food8.jpeg",
    "assets/images/food9.jpg",
    "assets/images/food10.jpg",
  ];
  List itemList = [
    "Idli",
    "Dosa",
    "Poha",
    "Dhokla",
    "Samosa",
    "Pani Puri",
    "Vada pav",
    "Jalebi",
    "Appe",
    "Upma",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Food Items",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
        ),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.amber,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 120,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3,
                        color: Colors.amber,
                      ),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      "${imageList[index]}",
                      fit: BoxFit.cover,
                      height: 150,
                      width: 120,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "${itemList[index]}",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500),
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
