// Create a TextField which when tapped a date picker must open and when you select the date it must be displayed in the TextField in the Format.

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Assignment60 extends StatefulWidget {
  const Assignment60({super.key});

  @override
  State<Assignment60> createState() => _Assignment60State();
}

class _Assignment60State extends State<Assignment60> {
  FocusNode dateFocus = FocusNode();
  TextEditingController dateController = TextEditingController();

  void selectDate() async {
    DateTime? pickDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2050),
    );
    String formatedDate = DateFormat.yMMMd().format(pickDate!);
    setState(() {
      dateController.text = formatedDate;
    });
  }

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
          padding: const EdgeInsets.all(40.0),
          child: TextField(
            focusNode: dateFocus,
            readOnly: true,
            keyboardType: TextInputType.none,
            onTap: selectDate,
            controller: dateController,
            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.calendar_month),
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
