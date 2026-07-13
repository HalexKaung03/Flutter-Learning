import 'package:flutter/material.dart';

class Ex46BottomSheet extends StatelessWidget {
  const Ex46BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomSheet'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Text('Hello'),
              ),
            );
          },
        ),
      ),
    );
  }
}
