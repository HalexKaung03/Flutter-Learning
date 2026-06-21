import 'package:flutter/material.dart';

class Ex8Buttons extends StatelessWidget {
  const Ex8Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton.icon(
            onPressed: () {}, icon: Icon(Icons.home), label: Text('Home')),

        // child: OutlinedButton(
        //   child: const Text('Submit'),
        //   onPressed: () {},
        // ),

        // child: IconButton(
        //   icon: const Icon(Icons.home),
        //   onPressed: () {},
        // ),

        // child: TextButton(
        //   child: const Text('Submit'),
        //   onPressed: () {},
        // ),

        // child: ElevatedButton(
        //   onPressed: () {
        //     print('clicked!');
        //   },
        //   child: Text('Buttons'),
        //   style: const ButtonStyle(
        //     backgroundColor: MaterialStatePropertyAll(Colors.red),
        //     foregroundColor: MaterialStatePropertyAll(Colors.white),
        //   ),
        // ),
      ),
    );
  }
}
