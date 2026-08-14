import 'package:flutter/material.dart';
import 'package:flutter_course/note_app/screens/note_list_screen.dart';

class NoteSplashScreen extends StatefulWidget {
  const NoteSplashScreen({super.key});

  @override
  State<NoteSplashScreen> createState() => _NoteSplashScreenState();
}

class _NoteSplashScreenState extends State<NoteSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (context.mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const NoteListScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/note.jpg',
              width: 180,
            ),
            const Text(
              'Notes',
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
