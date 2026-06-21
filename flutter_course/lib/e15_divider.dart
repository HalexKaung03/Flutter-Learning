import 'package:flutter/material.dart';

class Ex15Divider extends StatelessWidget {
  const Ex15Divider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Divider'),
        ),
        body: const Column(
          children: [
            Text('Hello'),
            Divider(
              height: 2,
              thickness: 2,
              color: Colors.blue,
              indent: 23,
              endIndent: 23,
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  Text('Hello'),
                  VerticalDivider(),
                  Text('Hello'),
                ],
              ),
            )
          ],
        ));
  }
}
