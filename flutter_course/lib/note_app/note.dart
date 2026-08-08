

class Note {
  final String id;
  final String title;
  final String content;
  final DateTime date;
  final int color;

  const Note({
    required this.id,
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });

  @override
  String toString() {
    return 'Note(id: $id, title: $title, content: $content, date: $date, color: $color)';
  }
}
