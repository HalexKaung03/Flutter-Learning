import 'package:flutter/material.dart';

class Ex42Radio extends StatefulWidget {
  const Ex42Radio({super.key});

  @override
  State<Ex42Radio> createState() => _Ex42RadioState();
}

class _Ex42RadioState extends State<Ex42Radio> {
  var selectedValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Radio(
                  value: 'value one',
                  groupValue: selectedValue,
                  onChanged: (v) {
                    setState(() {
                      selectedValue = v!;
                    });
                  },
                ),
                Text('Value one'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'value two',
                  groupValue: selectedValue,
                  onChanged: (v) {
                    setState(() {
                      selectedValue = v!;
                    });
                  },
                ),
                Text('Value two'),
              ],
            ),
            RadioListTile(
                value: 'value three',
                groupValue: selectedValue,
                title: Text('Value three'),
                subtitle: Text('Blah Blah'),
                onChanged: (v) {
                  setState(() {
                    selectedValue = v!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
