import 'package:flutter/material.dart';

class ThemeProvider extends InheritedWidget {
  const ThemeProvider({super.key, required this.child, required this.themeMode, required this.changeTheme}) : super(child: child);

  final Widget child;
  final ThemeMode themeMode; // current theme
  final VoidCallback changeTheme;// function for theme change

  static ThemeProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return oldWidget.themeMode != themeMode; // return bool
  }
}
