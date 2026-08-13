import 'package:flutter/material.dart';
import 'package:flutter_course/note_app/models/note.dart';
import 'package:flutter_course/note_app/screens/note_list_screen.dart';
import 'package:flutter_course/note_app/service/note_service.dart';
import 'package:realm/realm.dart';

void main() => runApp(const NoteApp());

// List<Note> allNotes = [
//   Note(
//     id: '1',
//     title: 'First Note',
//     content: 'This is the content of the first note.',
//     color: 0xffff4081,
//     date: DateTime(2023, 5, 2),
//   ),
//   Note(
//     id: '2',
//     title: 'Second Note',
//     content: 'This is the content of the second note.',
//     color: 0xff448aff,
//     date: DateTime(2023, 5, 3),
//   ),
//   Note(
//     id: '3',
//     title: 'Third Note',
//     content: 'This is the content of the third note.',
//     color: 0xff00e676,
//     date: DateTime(2023, 5, 4),
//   ),
//   Note(
//     id: '4',
//     title: 'Fourth Note',
//     content: 'This is the content of the fourth note.',
//     color: 0xffffc107,
//     date: DateTime(2023, 5, 5),
//   ),
//   Note(
//     id: '5',
//     title: 'Fifth Note',
//     content: 'This is the content of the fifth note.',
//     color: 0xff9c27b0,
//     date: DateTime(2023, 5, 6),
//   ),
//   Note(
//     id: '6',
//     title: 'Sixth Note',
//     content: 'This is the content of the sixth note.',
//     color: 0xff795548,
//     date: DateTime(2023, 5, 7),
//   ),
// ];

class NoteApp extends StatefulWidget {
  const NoteApp({super.key});

  @override
  State<NoteApp> createState() => _NoteAppState();
}

class _NoteAppState extends State<NoteApp> {
  late final Realm _realm;
  late final NoteService noteService;

  @override
  void initState() {
    super.initState();
    var config = Configuration.local([Note.schema]); //database type
    _realm = Realm(config); //database
    noteService = NoteService(_realm); //function in database
  }

  @override
  void dispose() {
    _realm.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      debugShowCheckedModeBanner: false,
      home: NoteListScreen(
        noteService: noteService,
      ),
      theme: ThemeData.dark(),
    );
  }
}
