import 'package:flutter/material.dart';
import 'package:flutter_course/note_app/note_list_screen.dart';

void main() => runApp(const NoteApp());

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      debugShowCheckedModeBanner: false,
      home: const NoteListScreen(),
      theme: ThemeData.dark(),
    );
  }
}
