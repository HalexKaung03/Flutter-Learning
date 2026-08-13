
import 'package:flutter/material.dart';
import 'package:flutter_course/note_app/constants/colors.dart';
import 'package:flutter_course/note_app/main.dart';
import 'package:flutter_course/note_app/models/note.dart';
import 'package:flutter_course/note_app/screens/note_list_screen.dart';
import 'package:flutter_course/note_app/service/note_service.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class NoteEditorScreen extends StatefulWidget {
  const NoteEditorScreen({super.key, required this.noteService});

  final NoteService noteService;

  @override
  State<NoteEditorScreen> createState() => _NoteEditorScreenState();
}

class _NoteEditorScreenState extends State<NoteEditorScreen> {
  Color currentColor = colors.first;

  late final TextEditingController titleController;
  late final TextEditingController contentController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    contentController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note Editor'),
        actions: [
          TextButton.icon(
            onPressed: () {
              if (titleController.text.trim().isNotEmpty &&
                  contentController.text.trim().isNotEmpty) {
                debugPrint('save note');
                final note = Note(
                  const Uuid().v4(),
                  titleController.text.trim(),
                  contentController.text.trim(),
                  DateTime.now(),
                  currentColor.value,
                );
                debugPrint(note.toString());
                widget.noteService.addNote(note);
                Navigator.of(context).popUntil((route)=> route.isFirst);
              } else {
                debugPrint('note title or content is empty');
              }
            },
            icon: const Icon(Icons.save),
            label: const Text(
              'Save',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat.yMMMMd().format(DateTime.now()),
                style: TextStyle(color: Colors.grey.shade700),
              ),
              TextField(
                controller: titleController,
                autofocus: true,
                maxLines: null,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Note Title',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: contentController,
                decoration: InputDecoration(
                  hintText: 'Note Content',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                  border: InputBorder.none,
                ),
                maxLines: null,
              ),
              // CircleAvatar(
              //   radius: 20,
              //   backgroundColor: currentColor,
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              splashColor: Colors.black38,
              onTap: () {
                setState(() {
                  currentColor = colors[index];
                });
              },
              child: Ink(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors[index],
                ),
                child: currentColor == colors[index]
                    ? const Icon(Icons.check, color: Colors.white)
                    : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
