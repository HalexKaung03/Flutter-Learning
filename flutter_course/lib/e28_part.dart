import 'package:flutter/material.dart';

class NumberTextState extends StatefulWidget {
  NumberTextState({super.key, required this.number});

  final int number;

  @override
  State<NumberTextState> createState() => _NumberTextStateState(
    
  );
}

class _NumberTextStateState extends State<NumberTextState> {
  int localNumberState = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        children: [
          Text('Constructor number : ${widget.number}'),
          Text('Local Number : $localNumberState'),
          OutlinedButton(
              onPressed: () {
                setState(() {
                  localNumberState++;
                });
              },
              child: const Text('Increase Local Number'))
        ],
      ),
    );
  }
}
