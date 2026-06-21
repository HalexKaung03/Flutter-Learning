import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Ex4Image extends StatelessWidget {
  const Ex4Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset("images/img_1.jpg"),
            // child: Image.network( 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKCm2TrgV_qFZVP8MWuWVNYQ03fj-YQBdT1ur4_5ldZg&s=10'
            ));
  }
}
