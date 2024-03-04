// Create a Container in the Center of the Screen, now In the background of the Container display an Image(the image can be an asset or network image). Also, display text in the center of the Container.
// (Refer to the below image the name "Core2web" is displayed in the center of the container and the image is displayed in the background)

import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/black-gold-concept.jpg",
              ),
            ),
          ),
          child: const Text(
            "Incubator",
            style: TextStyle(
              color: Color.fromRGBO(255, 215, 0, 1),
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
