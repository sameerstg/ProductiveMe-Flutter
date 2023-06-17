import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  TextEditingController dateController = TextEditingController();
  @override
  void initState() {
    dateController.text = DateFormat('dd-MM-yyyy').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: dateController,
      onTap: () async {
        DateTime? pickedTime = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2101));
        if (pickedTime != null) {
          setState(
            () {
              dateController.text = DateFormat('dd-MM-yyyy').format(pickedTime);
            },
          );
        }
      },
      decoration: const InputDecoration(
          icon: Icon(Icons.calendar_today_rounded), labelText: "Select Date"),
    );
  }
}
