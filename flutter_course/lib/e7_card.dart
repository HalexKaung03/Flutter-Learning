import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ex7Card extends StatelessWidget {
  const Ex7Card({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Card(
          color: Colors.blue,
          elevation: 16,
          child: Text(
            'Cards',
            style: TextStyle(fontSize: 36),
          )),
    ));
  }
}
