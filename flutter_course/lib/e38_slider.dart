import 'package:flutter/material.dart';

class Ex38Slider extends StatefulWidget {
  const Ex38Slider({super.key});

  @override
  State<Ex38Slider> createState() => _Ex38SliderState();
}

class _Ex38SliderState extends State<Ex38Slider> {
  int sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Center(
        child: Slider(
          value: sliderValue.toDouble(),
          onChanged: (v) {
            setState(() {
              sliderValue = v.toInt();
              debugPrint('sliderValue = $sliderValue');
            });
          },
          activeColor: Colors.purple,
          inactiveColor: Colors.grey.shade300,
          thumbColor: Colors.white,
          max: 100,
          min: 0,
        ),
      ),
    );
  }
}
