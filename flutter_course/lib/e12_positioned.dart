import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ex12Positioned extends StatelessWidget {
  const Ex12Positioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout(Stack->Positioned)'),
      ),
      body: Container(
        width: 300,
        height: 300,
        color: Colors.amber,
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.loose,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: -50,
              bottom: 0,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
