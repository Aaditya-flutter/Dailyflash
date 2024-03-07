// Create a screen that displays an asset image of the food item at the top of the Screen, below the image, display the name of the food item and below the name give the description of the item. Add appropriate padding.

import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/icecream.jpg",
              width: double.infinity,
              height: 300,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Ice cream",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Ice cream is a frozen dessert made from cream and ice, with added flavors and sweeteners. This mixture is quickly frozen while it is stirred continuously in a mixer, so that large ice crystals do not form. Some ice cream is made with carrageenan, a gum found in seaweed so that it is not sticky and easily eatable. Nowadays, ice cream comes with different flavors, shapes, colours and textures. ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
