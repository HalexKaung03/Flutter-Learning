import 'dart:developer';

import 'package:flutter/material.dart';

class Ex16GestureDetector extends StatelessWidget {
  const Ex16GestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture Detector'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            log('clicked!');
          },
          onDoubleTap: () {
            log('double clicked!');
          },
          child: const Text('Click Me!'),
        ),
      ),
    );
  }
}
