import 'package:flutter/material.dart';

class Ex9Row extends StatelessWidget {
  const Ex9Row({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Layout'),
      ),
      body: Center(
        child: Container(
          height: 500,
          color: Colors.amber,
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
        ),
      ),
    );
  }
}
