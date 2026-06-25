import 'package:flutter/material.dart';
import 'package:flutter_course/e28_part.dart';

class Ex28StatefulLifecycle extends StatefulWidget {
  const Ex28StatefulLifecycle({super.key});

  @override
  State<Ex28StatefulLifecycle> createState() => _Ex28StatefulLifecycleState();
}

class _Ex28StatefulLifecycleState extends State<Ex28StatefulLifecycle> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatefulWidget Lifecycle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NumberTextState(number: number),
            const SizedBox(
              height: 16,
            ),
            Text('Parent Number : $number'),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                child: const Text('Increase')),
            ElevatedButton(onPressed: () {}, child: const Text('Go To Detail')),
          ],
        ),
      ),
    );
  }
}
