import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_course/note_app/models/note.dart';
import 'package:flutter_course/note_app/provider/theme_provider.dart';
// import 'package:flutter_course/note_app/screens/note_list_screen.dart';
import 'package:flutter_course/note_app/screens/splash_screen.dart';
import 'package:flutter_course/note_app/service/note_service.dart';
import 'package:flutter_course/note_app/provider/service_provider.dart';
import 'package:flutter_course/note_app/service/theme_service.dart';
import 'package:flutter_course/note_app/theme/note_theme.dart';
import 'package:realm/realm.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeMode = await ThemeService.getThemeMode();
  runApp(NoteApp(themeMode: themeMode));
}


class NoteApp extends StatefulWidget {
  const NoteApp({super.key, required this.themeMode});

  final ThemeMode themeMode;

  @override
  State<NoteApp> createState() => _NoteAppState();
}

class _NoteAppState extends State<NoteApp> {
  late final Realm _realm;
  late final NoteService noteService;

  late ThemeMode _themeMode = widget.themeMode;

  @override
  void initState() {
    super.initState();
    var config = Configuration.local([Note.schema]); //database type
    _realm = Realm(config); //database
    noteService = NoteService(_realm); //function in database
    // loadTheme();
  }


  @override
  void dispose() {
    _realm.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Realm Database Path: ${_realm.config.path}");

    return ServiceProvider(
      noteSerive: noteService,
      child: ThemeProvider(
        themeMode: _themeMode,
        changeTheme: () async {
          setState(() {
            if (_themeMode == ThemeMode.dark) {
              _themeMode = ThemeMode.light;
            } else {
              _themeMode = ThemeMode.dark;
            }
          });

          await ThemeService.setThemeMode(_themeMode);
        },
        child: MaterialApp(
          title: 'Note App',
          debugShowCheckedModeBanner: false,
          home: const NoteSplashScreen(),
          theme: NoteTheme.lightTheme(),
          darkTheme: NoteTheme.darkTheme(),
          themeMode: _themeMode,
        ),
      ),
    );
  }
}
