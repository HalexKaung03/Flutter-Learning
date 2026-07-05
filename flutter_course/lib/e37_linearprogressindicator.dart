import 'package:flutter/material.dart';

class Ex37LinearProgressIndicator extends StatefulWidget {
  const Ex37LinearProgressIndicator({super.key});

  @override
  State<Ex37LinearProgressIndicator> createState() =>
      _Ex37LinearProgressIndicatorState();
}

class _Ex37LinearProgressIndicatorState
    extends State<Ex37LinearProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linear Progress Indicator'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.grey.shade300,
            color: Colors.purple,
            minHeight: 20,
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}
