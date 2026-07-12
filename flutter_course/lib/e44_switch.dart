import 'package:flutter/material.dart';

class Ex44Switch extends StatefulWidget {
  const Ex44Switch({super.key});

  @override
  State<Ex44Switch> createState() => _Ex44SwitchState();
}

class _Ex44SwitchState extends State<Ex44Switch> {
  bool isOpen1 = false;
  bool isOpen2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
              value: isOpen1,
              activeColor: Colors.purple,
              thumbColor: MaterialStatePropertyAll(Colors.black),
              onChanged: (v) {
                setState(() {
                  isOpen1 = v;
                });
              },
            ),
            SwitchListTile(
                value: isOpen2,
                tileColor: Colors.green,
                title: Text(
                  'Alarm',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '6:00',
                  style: TextStyle(color: Colors.white),
                ),
                onChanged: (v) {
                  setState(() {
                    isOpen2 = v;
                  });
                })
          ],
        ),
      ),
    );
  }
}
