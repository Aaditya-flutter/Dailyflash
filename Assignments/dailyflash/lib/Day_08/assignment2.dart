// Create a Screen in which you will have to display the images of food items and below the image display the name of that food item. Display 10 such images. The scrolling direction must be horizontal(refer to the below image)

import 'package:flutter/material.dart';

class Assignment37 extends StatefulWidget {
  const Assignment37({super.key});

  @override
  State<Assignment37> createState() => _Assignment37State();
}

class _Assignment37State extends State<Assignment37> {
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
          scrollDirection: Axis.horizontal,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 150,
                  width: 120,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset(
                    "${imageList[index]}",
                    fit: BoxFit.fill,
                    height: 150,
                    width: 120,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.amber,
                      width: 3,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Text(
                    "${itemList[index]}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
