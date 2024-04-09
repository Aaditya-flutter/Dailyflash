// Create a screen displaying a TextFormField where the user will enter an email id. Below the text form field display a submit button. When the button is pressed validate the email address entered in the text form field. You must check whether the email address ends with @gmail.com. The email address must not contain any spaces.

import 'package:flutter/material.dart';

class Assignment63 extends StatefulWidget {
  const Assignment63({super.key});

  @override
  State<Assignment63> createState() => _Assignment63State();
}

class _Assignment63State extends State<Assignment63> {
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
                    return "all characters should be lower case";
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
