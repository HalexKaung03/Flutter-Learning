import 'package:flutter/material.dart';

class Ex36CircularProgressIndicator extends StatefulWidget {
  const Ex36CircularProgressIndicator({super.key});

  @override
  State<Ex36CircularProgressIndicator> createState() =>
      _Ex36CircularProgressIndicatorState();
}

class _Ex36CircularProgressIndicatorState
    extends State<Ex36CircularProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circular Progress Indicator'),
      ),
      body: Center(
        child: CircularProgressIndicator(
          value: 0.5,
          color: Colors.purple,
          backgroundColor: Colors.grey.shade300,
          strokeAlign: 2,
          strokeCap: StrokeCap.round,
          strokeWidth: 20,
        ),
      ),
    );
  }
}
