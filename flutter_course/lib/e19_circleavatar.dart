import 'package:flutter/material.dart';

class Ex19CircleAvatar extends StatelessWidget {
  const Ex19CircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Circle Avatar'),
        ),
        body: const Center(
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            backgroundImage: AssetImage('images/img_1.jpg'),
            child: Text('C'),
          ),
        ));
  }
}
