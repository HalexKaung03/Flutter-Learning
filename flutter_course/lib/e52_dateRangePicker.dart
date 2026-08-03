import 'package:flutter/material.dart';

class Ex52DateRangePicker extends StatelessWidget {
  const Ex52DateRangePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Range Picker"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("Pick Date Range"),
            onPressed: () async {
              final result = await showDateRangePicker(
                context: context,
                firstDate: DateTime(2000, 1, 1),
                lastDate: DateTime(2100, 12, 31),
                keyboardType: TextInputType.datetime,
              );
              debugPrint('start date: ${result?.start}');
              debugPrint('end date: ${result?.end}');
              debugPrint('duration: ${result?.duration.inDays} days');
            }),
      ),
    );
  }
}
