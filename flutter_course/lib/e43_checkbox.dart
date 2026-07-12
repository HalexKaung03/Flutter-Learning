import 'package:flutter/material.dart';

class Ex43CheckBox extends StatefulWidget {
  const Ex43CheckBox({super.key});

  @override
  State<Ex43CheckBox> createState() => _Ex43CheckBoxState();
}

class _Ex43CheckBoxState extends State<Ex43CheckBox> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Box'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                    value: isChecked1,
                    onChanged: (v) {
                      setState(() {
                        isChecked1 = v!;
                      });
                    }),
                Text('Day 1'),
              ],
            ),
            CheckboxListTile(
              value: isChecked2,
              onChanged: (v) {
                setState(() {
                  isChecked2 = v!;
                });
              },
              title: Text('Day 2'),
              subtitle: Text('Work'),
            )
          ],
        ),
      ),
    );
  }
}
