import 'dart:ffi';

import 'package:flutter/material.dart';

class Ex29FloatingActionButton extends StatelessWidget {
  const Ex29FloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
      ),
      body: Center(child: const Text('Hello')),
      floatingActionButton: FloatingActionButton.extended(
        tooltip: 'Go to Messenger',
        onPressed: () {},
        label: Text('To Messenger'),
        icon: Icon(Icons.messenger),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
