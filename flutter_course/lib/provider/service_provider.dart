import 'package:flutter/material.dart';
import 'package:flutter_course/note_app/service/note_service.dart';

class ServiceProvider extends InheritedWidget {
  const ServiceProvider({super.key, required this.child, required this.noteSerive}) : super(child: child);

  final Widget child;
  final NoteService noteSerive;

  static ServiceProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ServiceProvider>();
  }

  @override
  bool updateShouldNotify(ServiceProvider oldWidget) {
    return true;
  }
}
