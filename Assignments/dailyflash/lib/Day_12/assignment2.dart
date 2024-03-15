// Create a text field in which the user will enter the names of weekdays and when the user enters the weekday and presses enter the weekday must get added to the list and display the list below the text field.
// Refer to the below image

import 'package:flutter/material.dart';

class Assignment57 extends StatefulWidget {
  const Assignment57({super.key});

  @override
  State<Assignment57> createState() => _Assignment57State();
}

class _Assignment57State extends State<Assignment57> {
  TextEditingController textControl = TextEditingController();
  bool isObscure = true;
  List days = [];

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                controller: textControl,
                style: const TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  labelText: "Enter Weekday",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                textInputAction: TextInputAction.done,
                onSubmitted: (value) {
                  if (value.toLowerCase().trim() == "monday" ||
                      value.toLowerCase().trim() == "tuesday" ||
                      value.toLowerCase().trim() == "wednesday" ||
                      value.toLowerCase().trim() == "thursday" ||
                      value.toLowerCase().trim() == "friday" ||
                      value.toLowerCase().trim() == "saturday" ||
                      value.toLowerCase().trim() == "sunday") {
                    days.add(value);
                    textControl.clear();
                  }
                  setState(() {});
                },
              ),
            ),
            Text("$days"),
          ],
        ),
      ),
    );
  }
}
