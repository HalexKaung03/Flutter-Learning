import 'package:flutter/material.dart';

class Ex23GridView extends StatelessWidget {
  const Ex23GridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body:
          // GridView(
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //     crossAxisSpacing: 16,
          //     mainAxisSpacing: 24,
          //     childAspectRatio: 5 / 3,
          //   ),
          //   children: const [
          //     Card(
          //       child: const Text('Hello'),
          //     ),
          //     Card(
          //       child: const Text('Hello'),
          //     ),
          //     Card(
          //       child: const Text('Hello'),
          //     ),
          //     Card(
          //       child: const Text('Hello'),
          //     ),
          //     Card(
          //       child: const Text('Hello'),
          //     ),
          //   ],
          // ),

          //     GridView(
          //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //     maxCrossAxisExtent: 200,
          //     crossAxisSpacing: 16,
          //     mainAxisSpacing: 24,
          //     childAspectRatio: 5 / 3,
          //   ),
          //   children: const [
          //     Card(
          //       child: const Text('Hello'),
          //     ),
          //     Card(
          //       child: const Text('Hello'),
          //     ),
          //     Card(
          //       child: const Text('Hello'),
          //     ),
          //     Card(
          //       child: const Text('Hello'),
          //     ),
          //     Card(
          //       child: const Text('Hello'),
          //     ),
          //   ],
          // )
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100),
              itemCount: 20,
              itemBuilder: (context, index) => const Card(
                    child: Text('Hello'),
                  )),
    );
  }
}
