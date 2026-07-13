import 'package:flutter/material.dart';

class Ex47SnackBar extends StatelessWidget {
  const Ex47SnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Open'),
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Hello'),
              behavior: SnackBarBehavior.floating,
              showCloseIcon: true,
              action: SnackBarAction(
                label: 'Ok',
                onPressed: () {},
              ),
            ));
          },
        ),
      ),
    );
  }
}
