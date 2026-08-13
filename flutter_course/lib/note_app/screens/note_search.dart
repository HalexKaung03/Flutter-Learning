import 'package:flutter/material.dart';
import 'package:flutter_course/note_app/main.dart';
import 'package:flutter_course/note_app/models/note.dart';
import 'package:flutter_course/note_app/screens/note_list_screen.dart';
import 'package:flutter_course/note_app/service/note_service.dart';
import 'package:flutter_course/note_app/screens/note_update_screen.dart';

class NoteSearch extends StatefulWidget {
  const NoteSearch({super.key, required this.noteService});

  final NoteService noteService;

  @override
  State<NoteSearch> createState() => _NoteSearchState();
}

class _NoteSearchState extends State<NoteSearch> {
  List<Note> noteList = [];

  late final TextEditingController searchController;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    focusNode = FocusNode()..requestFocus();
  }

  @override
  void dispose() {
    searchController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: searchController,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: 'Search...',
            fillColor: Colors.grey.shade800,
            filled: true,
            isDense: true,
            // border: InputBorder.none,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: BorderSide.none,
            ),
            suffixIcon: IconButton(
              iconSize: 30,
              icon: const Icon(Icons.close),
              onPressed: () {
                searchController.clear();
              },
            ),
          ),
          onEditingComplete: () {
            setState(() {
              noteList.clear();
              noteList.addAll(
                  widget.noteService.searchNote(searchController.text.trim()));
            });
          },
        ),
      ),
      body: noteList.isEmpty
          ? const Padding(
              padding: EdgeInsets.only(top: 20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'There is no data!',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ]),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) => NoteCard(
                note: noteList[index],
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NoteUpdateScreen(
                        note: noteList[index],
                        noteService: widget.noteService,
                      ),
                    ),
                  );
                },
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount: noteList.length,
            ),
    );
  }
}
