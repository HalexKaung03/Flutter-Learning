import 'package:flutter/material.dart';
import 'package:flutter_course/note_app/main.dart';
import 'package:flutter_course/note_app/models/note.dart';
import 'package:flutter_course/note_app/screens/note_list_screen.dart';
import 'package:flutter_course/note_app/service/note_service.dart';
import 'package:flutter_course/note_app/screens/note_update_screen.dart';
import 'package:flutter_course/note_app/provider/service_provider.dart';

class NoteSearch extends StatefulWidget {
  const NoteSearch({super.key});

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
    final NoteService noteService = ServiceProvider.of(context)!.noteSerive;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 50,
          child: TextField(
            cursorColor: Colors.black87,
            cursorWidth: 2,
            cursorRadius: Radius.circular(10),
            textAlignVertical: TextAlignVertical.center,
            controller: searchController,
            focusNode: focusNode,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 16), // ရိုက်တဲ့စာလုံးအရွယ်အစားနှင့်အရောင်
            decoration: InputDecoration(
              hintText: 'Search...',
              suffixIcon: IconButton(
                iconSize: 20,
                color: Colors.black,
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
                    noteService.searchNote(searchController.text.trim()));
              });
            },
          ),
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
