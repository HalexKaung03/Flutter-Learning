import 'package:flutter/material.dart';
import 'package:flutter_course/navigation/screen_a.dart';
import 'package:flutter_course/navigation/screen_b.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Screen C'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ElevatedButton.icon(
            //   icon: const Icon(Icons.arrow_back),
            //   label: const Text('Go nack to Screen A'),
            //   onPressed: () {
            //     Navigator.of(context).push(
            //         MaterialPageRoute(builder: (context) => const ScreenA()));
            //   },
            // ),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_back),
              label: const Text('Go back to Screen B'),
              // onPressed: () {
              //   Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => const ScreenB()));
              // },
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_back),
              label: const Text('Go back to Screen A'),
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_forward),
              label: const Text('PushandRemoveUntil Screen A'),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const ScreenA()),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
