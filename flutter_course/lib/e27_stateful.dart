import 'package:flutter/material.dart';

class Ex27Stateful extends StatefulWidget {
  const Ex27Stateful({super.key});

  @override
  State<Ex27Stateful> createState() => _Ex27StatefulState();
}

class _Ex27StatefulState extends State<Ex27Stateful> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number.toString()),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                icon: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                label: const Text('Increase')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                icon: Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    number--;
                  });
                },
                label: const Text('Decrease'))
          ],
        ),
      ),
    );
  }
}
