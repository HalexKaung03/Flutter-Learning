import 'package:flutter/material.dart';

class Ex3Container extends StatelessWidget {
  const Ex3Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          // color: Colors.red,
          child: Container(
            child: const Text('Flutter Verse'),
            // color: Colors.amber,
            padding: const EdgeInsets.all(20),
            width: 200,
            height: 100,
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                  strokeAlign: 4,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(20),
                // shape: BoxShape.circle
                boxShadow: const [
                  BoxShadow(
                    color: Colors.blue,
                    blurRadius: 12,
                    offset: Offset(1, 1),
                    spreadRadius: 8,
                    blurStyle: BlurStyle.outer,
                  )
                ],
                gradient: const LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.purple,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
          ),
        ),
      ),
    );
  }
}
