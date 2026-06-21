import 'dart:developer';

import 'package:flutter/material.dart';

class Ex17InkWell extends StatelessWidget {
  const Ex17InkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ink and InkWell'),
      ),
      body: Center(
        child: InkWell(
          splashColor: Colors.blue,
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            log('clicked!');
          },
          onDoubleTap: () {
            log('double clicked!');
          },
          child: Ink(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.amber,
            ),
            child: const Text('Click Me!'),
          ),
        ),
      ),
    );
  }
}
