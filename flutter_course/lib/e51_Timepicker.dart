import 'package:flutter/material.dart';

class Ex51TimePicker extends StatelessWidget {
  const Ex51TimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Picker'),
      ),
      body: Center(
          child: ElevatedButton(
              child: const Text('Pick a time'),
              onPressed: () async {
                final result = await showTimePicker(
                  context: context,
                  // initialTime: TimeOfDay.now(),
                  initialTime: const TimeOfDay(hour: 10, minute: 30),
                  initialEntryMode: TimePickerEntryMode.dial,
                );
                print('result: $result');
              })),
    );
  }
}
