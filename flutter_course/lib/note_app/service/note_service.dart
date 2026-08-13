import 'package:flutter_course/note_app/models/note.dart';
import 'package:realm/realm.dart';

class NoteService {
  // Connect Database
  final Realm realm;
  const NoteService(this.realm);

  // Read and get Data in real time
  Stream<RealmResultsChanges<Note>> getAllNote() {
    return realm.query<Note>('TRUEPREDICATE SORT(date DESC)').changes;
  }

  // create data
  void addNote(Note note) {
    realm.write(() => realm.add(note));
  }

  // find data for update
  Note _getNote(String id) {
    final Note? note = realm.find<Note>(id);
    if (note != null) {
      return note;
    } else {
      throw Exception('Not Found!');
    }
  }

  // update data
  void updateNote(Note note) {
    realm.write(() {
      final myNote = _getNote(note.id);

      myNote.title = note.title;
      myNote.content = note.content;
      myNote.date = note.date;
      myNote.color = note.color;
    });
  }

  // delete data
  void deleteNote(Note note) {
    realm.write(() => realm.delete(note));
  }

  // search data
  List<Note> searchNote(String text) {
    return realm
        .query<Note>(r'title CONTAINS[c] $0 || content CONTAINS[c] $0', [text])
        .map((e) => e)
        .toList();
  }
}
