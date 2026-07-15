import 'package:flutter/material.dart';

class Ex49PageView extends StatefulWidget {
  const Ex49PageView({super.key});

  @override
  State<Ex49PageView> createState() => _Ex49PageViewState();
}

class _Ex49PageViewState extends State<Ex49PageView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              children: [
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.red,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: currentIndex == 0 ? Colors.red : Colors.grey,
                radius: 10,
              ),
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                backgroundColor: currentIndex == 1 ? Colors.red : Colors.grey,
                radius: 10,
              ),
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                backgroundColor: currentIndex == 2 ? Colors.red : Colors.grey,
                radius: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
