// import 'dart:ffi';

import 'package:flutter/material.dart';

class Ex29FloatingActionButton extends StatelessWidget {
  const Ex29FloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
      ),
      body: const Center(child:  Text('Hello')),
      floatingActionButton: FloatingActionButton.extended(
        tooltip: 'Go to Messenger',
        onPressed: () {},
        label: const Text('To Messenger'),
        icon: const Icon(Icons.messenger),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
