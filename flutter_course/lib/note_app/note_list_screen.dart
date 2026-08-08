import 'package:flutter/material.dart';
import 'package:flutter_course/note_app/note.dart';
import 'package:flutter_course/note_app/note_editor_screen.dart';
import 'package:flutter_course/note_app/note_search.dart';
import 'package:flutter_course/note_app/note_update_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';

class NoteListScreen extends StatefulWidget {
  const NoteListScreen({super.key});

  @override
  State<NoteListScreen> createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> {
  final List<Note> notes = [
    Note(
      id: '1',
      title: 'First Note',
      content: 'This is the content of the first note.',
      color: 0xffff4081,
      date: DateTime(2023, 5, 2),
    ),
    Note(
      id: '2',
      title: 'Second Note',
      content: 'This is the content of the second note.',
      color: 0xff448aff,
      date: DateTime(2023, 5, 3),
    ),
    Note(
      id: '3',
      title: 'Third Note',
      content: 'This is the content of the third note.',
      color: 0xff00e676,
      date: DateTime(2023, 5, 4),
    ),
    Note(
      id: '4',
      title: 'Fourth Note',
      content: 'This is the content of the fourth note.',
      color: 0xffffc107,
      date: DateTime(2023, 5, 5),
    ),
    Note(
      id: '5',
      title: 'Fifth Note',
      content: 'This is the content of the fifth note.',
      color: 0xff9c27b0,
      date: DateTime(2023, 5, 6),
    ),
    Note(
      id: '6',
      title: 'Sixth Note',
      content: 'This is the content of the sixth note.',
      color: 0xff795548,
      date: DateTime(2023, 5, 7),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NoteSearch(notes: notes),
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Note? note = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const NoteEditorScreen(),
            ),
          );

          if (note != null) {
            setState(() {
              notes.add(note);
            });
          }
        },
        shape: const OvalBorder(),
        child: const Icon(Icons.add),
      ),
      body: GridView.custom(
        padding: const EdgeInsets.all(16),
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          repeatPattern: QuiltedGridRepeatPattern.same,
          pattern: const [
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 2),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: notes.length,
          (context, index) => NoteCard(
            note: notes[index],
            onTap: () async {
              final Note? note = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NoteUpdateScreen(note: notes[index]),
                ),
              );

              if (note != null) {
                setState(() {
                  final index = notes.indexWhere((n) => n.id == note.id);
                  notes[index] = note;
                });
              }
            },
          ),
        ),
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
    required this.note,
    required this.onTap,
  });

  final Note note;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              note.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // const SizedBox(height: 8),
            Text(
              note.content,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              DateFormat.yMMMd().format(note.date),
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
