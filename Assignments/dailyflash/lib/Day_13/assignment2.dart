// Create a flutter screen in which you will take user input using TextFormField. The user must enter a phone number and also give a submit button below the text form field.
// When the submit button is pressed check whether the user has entered a valid phone number i.e. the phone nuber must be 10 digits long, and the phone number must not contain any characters or special characters, and display the error message accordingly.

import 'package:flutter/material.dart';

class Assignment62 extends StatefulWidget {
  const Assignment62({super.key});

  @override
  State<Assignment62> createState() => _Assignment62State();
}

class _Assignment62State extends State<Assignment62> {
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
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Phone",
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
