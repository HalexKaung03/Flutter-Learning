import 'package:flutter/material.dart';

class Ex20_SingleChildScrollView extends StatelessWidget {
  const Ex20_SingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Child Scroll View'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        reverse: false,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: List.generate(
              20,
              (index) => ListTile(
                    title: Text("Hello $index"),
                    tileColor: Colors.green,
                  )),
        ),
      ),
    );
  }
}
