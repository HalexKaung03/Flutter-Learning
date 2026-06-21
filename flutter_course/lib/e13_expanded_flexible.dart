import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ex13ExpandedVsFlexible extends StatelessWidget {
  const Ex13ExpandedVsFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expanded vs Flexible'),
        ),
        body: Container(
          height: 400,
          color: Colors.amberAccent,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ));
  }
}
