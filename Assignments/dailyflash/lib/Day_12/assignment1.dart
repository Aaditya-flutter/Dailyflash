// Create a Screen in which We have a TextField in which the user will enter a password. The TextField must have rounded rectangular borders. At the end of the TextField give the icon which when pressed must make the text obscure and vice versa.

import 'package:flutter/material.dart';

class Assignment56 extends StatefulWidget {
  const Assignment56({super.key});

  @override
  State<Assignment56> createState() => _Assignment56State();
}

class _Assignment56State extends State<Assignment56> {
  TextEditingController textControl = TextEditingController();
  bool isObscure = true;

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
          padding: const EdgeInsets.all(50.0),
          child: TextField(
            controller: textControl,
            obscureText: isObscure,
            style: const TextStyle(
              fontSize: 20,
            ),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  isObscure = !isObscure;
                  setState(() {});
                },
                icon: (isObscure)
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
