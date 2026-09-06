import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService {
  static const String _key = "theme";
  static const String _light = "light";
  static const String _dark = "dark";


  //read
  static Future<ThemeMode> getThemeMode() async {
    final shared = await SharedPreferences.getInstance(); // connect to memory
    final theme = shared.getString(_key); // read the key 'theme' that was saved
    if (theme == _light) {
      return ThemeMode.light;
    } else if (theme == _dark) {
      return ThemeMode.dark;
    }
    // initial state, save dark theme
    else {
      await setThemeMode(ThemeMode.dark); // if no data, set dark mode (eg. when the app is first installed)
      return ThemeMode.dark;
    }
  }

  //save mode
  static Future<void> setThemeMode(ThemeMode themeMode) async {
    final shared = await SharedPreferences.getInstance(); // connect to memory
    if (themeMode == ThemeMode.light) {
      await shared.setString(_key, _light);
    } else {
      await shared.setString(_key, _dark);
    }
  }
}
