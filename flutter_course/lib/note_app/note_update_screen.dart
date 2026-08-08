import 'package:flutter/material.dart';
import 'package:flutter_course/note_app/colors.dart';
import 'package:flutter_course/note_app/note.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class NoteUpdateScreen extends StatefulWidget {
  const NoteUpdateScreen({super.key, required this.note});

  final Note note;

  @override
  State<NoteUpdateScreen> createState() => _NoteUpdateScreenState();
}

class _NoteUpdateScreenState extends State<NoteUpdateScreen> {
  Color currentColor = colors.first;

  late final TextEditingController titleController;
  late final TextEditingController contentController;
  late final DateTime currentDate;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.note.title);
    contentController = TextEditingController(text: widget.note.content);
    currentColor = Color(widget.note.color);
    currentDate = widget.note.date;
  }

  @override
  void dispose() {
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('currentColor: $currentColor');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note Editor'),
        actions: [
          TextButton.icon(
            onPressed: () {
              if (widget.note != null &&
                  titleController.text.trim().isNotEmpty &&
                  contentController.text.trim().isNotEmpty) {
                debugPrint('update note');
                final note = Note(
                  id: widget.note.id,
                  title: titleController.text.trim(),
                  content: contentController.text.trim(),
                  date: DateTime.now(),
                  color: currentColor.value,
                );
                debugPrint(note.toString());
                Navigator.of(context).pop(note);
              } else {
                final note = Note(
                  id: widget.note.id,
                  title: widget.note.title,
                  content: widget.note.content,
                  date: widget.note.date,
                  color: widget.note.color,
                );
                debugPrint(note.toString());
                Navigator.of(context).pop(note);
              }
            },
            icon: const Icon(Icons.update),
            label: const Text(
              'Update',
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
                DateFormat.yMMMMd().format(currentDate),
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

                debugPrint('currentColor: ${colors[1]}');
              },
              child: Ink(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors[index],
                ),
                child: currentColor.value == colors[index].value
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
