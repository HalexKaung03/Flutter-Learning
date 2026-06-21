import 'package:flutter/material.dart';

class Ex5ClipRrect extends StatelessWidget {
  const Ex5ClipRrect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        width: 300,
        height: 240,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'images/img_1.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      // child: Image.network( 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKCm2TrgV_qFZVP8MWuWVNYQ03fj-YQBdT1ur4_5ldZg&s=10'
    ));
  }
}
