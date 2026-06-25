import 'package:flutter/material.dart';
import 'package:flutter_course/e10_column.dart';
import 'package:flutter_course/e11_stack.dart';
import 'package:flutter_course/e12_positioned.dart';
import 'package:flutter_course/e13_expanded_flexible.dart';
import 'package:flutter_course/e14_exercise_profile.dart';
import 'package:flutter_course/e15_divider.dart';
import 'package:flutter_course/e16_gesture_detector.dart';
import 'package:flutter_course/e17_inkwell.dart';
import 'package:flutter_course/e18_listtile.dart';
import 'package:flutter_course/e19_circleavatar.dart';
import 'package:flutter_course/e20_singlechildscrollview.dart';
import 'package:flutter_course/e21_listview.dart';
import 'package:flutter_course/e22_listview_builder.dart';
import 'package:flutter_course/e23_gridview.dart';
import 'package:flutter_course/e24_gridtile.dart';
import 'package:flutter_course/e25_gridtilebar.dart';
import 'package:flutter_course/e26_wrap.dart';
import 'package:flutter_course/e27_stateful.dart';
import 'package:flutter_course/e28_stateful_lifecycle.dart';
import 'package:flutter_course/e3_container.dart';
import 'package:flutter_course/e4_image.dart';
import 'package:flutter_course/e5_cliprrect.dart';
import 'package:flutter_course/e6_icons.dart';
import 'package:flutter_course/e7_card.dart';
import 'package:flutter_course/e8_buttons.dart';
import 'package:flutter_course/e9_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Course',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Ex28StatefulLifecycle());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
