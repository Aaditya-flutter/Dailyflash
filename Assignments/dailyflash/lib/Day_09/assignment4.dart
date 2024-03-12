// Create a Screen and in the center of the screen place a TextField for user input and a "Submit" `Button` below the TextField. The TextField must have rounded borders and hint text. The color of the field must be purple.

import 'package:flutter/material.dart';

class Assignment44 extends StatelessWidget {
  const Assignment44({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Text Here",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1.5,
                      color: Colors.purple,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.purple,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
