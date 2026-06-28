import 'package:flutter/material.dart';
import 'package:flutter_course/navigation/screen_a.dart';
import 'package:flutter_course/navigation/screen_c.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Screen B'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_back),
              label: const Text('Go back to Screen A'),
              // onPressed: () {
              //   Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => const ScreenA()));
              // },
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Go to Screen C'),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ScreenC()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Replace Screen C'),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const ScreenC()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.arrow_forward),
              label: const Text('PushandRemoveUntil Screen C'),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const ScreenC()),
                    (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}
