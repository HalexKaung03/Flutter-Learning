import 'package:flutter/material.dart';

class Ex50DatePicker extends StatelessWidget {
  const Ex50DatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Date Picker'),
        ),
        body: Center(
            child: ElevatedButton(
                child: const Text('Pick a date'),
                onPressed: () async {
                  final result = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000, 1, 1),
                      lastDate: DateTime(2100, 12, 31),
                      helpText: 'Select a date',
                      confirmText: 'Confirm',
                      cancelText: 'Cancel',
                      initialEntryMode: DatePickerEntryMode.calendar,
                      initialDatePickerMode: DatePickerMode.day,
                      errorFormatText: 'Invalid format',
                      errorInvalidText: 'Out of range',
                      fieldHintText: 'MM/DD/YYYY',
                      fieldLabelText: 'Enter date',
                      currentDate: DateTime.now(),
                      builder: (context, child) => Theme(
                            data: ThemeData.dark(),
                            child: child!,
                          )
                          );
                  print('Selected date: $result');
                })));
  }
}
