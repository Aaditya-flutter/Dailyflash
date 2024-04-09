// Create 2 TextForm fields in which the user will enter the phone number and email address. You must validate the text form fields as soon as the user starts entering the text in the text form fields and display the error message.

import 'package:flutter/material.dart';

class Assignment64 extends StatefulWidget {
  const Assignment64({super.key});

  @override
  State<Assignment64> createState() => _Assignment64State();
}

class _Assignment64State extends State<Assignment64> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Phone Number",
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.5,
                    ),
                  ),
                ),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  final characters = RegExp('[a-zA-Z]');
                  final specialSym =
                      RegExp(r'[\^$*.\[\]{}()?\-"!@#%&/\,><:;_~`+='
                          "'"
                          " "
                          ']');
                  if (value!.length != 10) {
                    return "Enter 10 Digits";
                  } else if (characters.hasMatch(value)) {
                    return "Characters are not allowed";
                  } else if (specialSym.hasMatch(value)) {
                    return "Avoid special symbols";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email",
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.5,
                    ),
                  ),
                ),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  final regExp = RegExp(r'[\^$*\[\]{}()?\-"!#%&/\,><:;_~`+='
                      "'"
                      // " "
                      ']');
                  if (value == null || value.isEmpty) {
                    return "Enter your email";
                  } else if (regExp.hasMatch(value)) {
                    return "Avoid special characters";
                  } else if (RegExp(' ').hasMatch(value)) {
                    return "email must not contain spaces";
                  } else if (RegExp('[A-Z]').hasMatch(value)) {
                    return "all characters should be Lowercase";
                  } else if (!value.endsWith("@gmail.com")) {
                    return "email must end with @gmail.com";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Correct!"),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                },
                child: const Text(
                  "Validate",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
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
