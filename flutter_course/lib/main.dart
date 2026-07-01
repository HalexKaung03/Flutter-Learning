import 'package:flutter/material.dart';
import 'package:flutter_course/e30_bottom_nav.dart';
import 'package:flutter_course/navigation/screen_a.dart';
import 'package:flutter_course/navigation/screen_b.dart';
import 'package:flutter_course/navigation/screen_c.dart';

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
      home: Ex30BottomNav(),
      /*initialRoute: 'screenA',
      onGenerateInitialRoutes: (initialRoute)=>[
        MaterialPageRoute(builder: (context) => const ScreenA())
      ],*/
      // onGenerateRoute: (settings) {
      //   switch (settings.name) {
      //     case 'screenA':
      //       return MaterialPageRoute(builder: (context) => const ScreenA());
      //     case 'screenB':
      //       return MaterialPageRoute(
      //           builder: (_) => ScreenB(
      //                 data: settings.arguments as String,
      //               ));
      //     case 'screenC':
      //       return MaterialPageRoute(builder: (context) => const ScreenC());
      //     default:
      //       return MaterialPageRoute(builder: (context) => const ScreenA());
      //   }
      // },
      /*routes: {
        'screenA': (context) => const ScreenA(),
        'screenB': (context) => const ScreenB(
              data: "****",
            ),
        'screenC': (context) => const ScreenC(),
      },*/
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
