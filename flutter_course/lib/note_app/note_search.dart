import 'package:flutter/material.dart';
import 'package:flutter_course/note_app/note.dart';
import 'package:flutter_course/note_app/note_list_screen.dart';
import 'package:flutter_course/note_app/note_update_screen.dart';

class NoteSearch extends StatefulWidget {
  const NoteSearch({super.key, required this.notes});

  final List<Note> notes;

  @override
  State<NoteSearch> createState() => _NoteSearchState();
}

class _NoteSearchState extends State<NoteSearch> {
  List<Note> noteList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (value) {
            setState(() {
              noteList = widget.notes
                  .where((n) =>
                      n.title.toLowerCase().contains(value.toLowerCase()))
                  .toList();
            });
          },
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Search notes...',
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) => NoteCard(
          note: noteList[index],
          onTap: () async {
            final Note? note = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NoteUpdateScreen(note: noteList[index]),
              ),
            );

            if (note != null) {
              setState(() {
                final index = noteList.indexWhere((n) => n.id == note.id);
                noteList[index] = note;
              });
            }
          },
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemCount: noteList.length,
      ),
    );
  }
}
