import 'package:flutter/material.dart';
import 'package:flutter_course/navigation/screen_b.dart';
import 'package:flutter_course/navigation/screen_c.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Screen A'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Go to Screen B'),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ScreenB()));
              },
            ),
            // ElevatedButton.icon(
            //   icon: const Icon(Icons.arrow_forward),
            //   label: const Text('Go to Screen C'),
            //   onPressed: () {
            //     Navigator.of(context).push(
            //         MaterialPageRoute(builder: (context) => const ScreenC()));
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
