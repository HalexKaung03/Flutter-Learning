import 'dart:developer';

import 'package:flutter/material.dart';

class Ex22ListViewBuilder extends StatelessWidget {
  const Ex22ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // final itemList = List.generate(20, (index) => (Text('Hello $index')));

    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Builder'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.green,
            child: const Text('Hello World'),
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                itemCount: 100,
                itemBuilder: (context, index) =>
                    ItemText(text: index.toString())),
          )
        ],
      ),
    );
  }
}

class ItemText extends StatelessWidget {
  const ItemText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    log('build $text');
    return Text('index $text');
  }
}
