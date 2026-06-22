import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ex21ListView extends StatelessWidget {
  const Ex21ListView({super.key});

  @override
  Widget build(BuildContext context) {
    final itemList = List.generate(20, (index) => (Text('Hello $index')));
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.green,
            child: const Text('Hello World'),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              children: itemList,
            ),
          )
        ],
      ),
    );
  }
}
