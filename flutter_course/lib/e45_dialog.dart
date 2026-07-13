import 'package:flutter/material.dart';

class Ex45Dialog extends StatefulWidget {
  const Ex45Dialog({super.key});

  @override
  State<Ex45Dialog> createState() => _Ex45DialogState();
}

class _Ex45DialogState extends State<Ex45Dialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Open'),
        onPressed: () async {
          final result = await showDialog(
              context: context,
              barrierDismissible: false,
              // builder: (context) => const Dialog(
              //   child: Padding(
              //     padding: EdgeInsets.all(8.0),
              //     child: Text('Hello'),
              //   ),
              // ),

              // builder: (context) => const Dialog.fullscreen(
              //       child: Text('Hello'),
              //     )

              // builder: (context) => const SimpleDialog(
              //       title: Text('Title'),
              //       children: [
              //         Text('Hello'),
              //         Text('Hello'),
              //         Text('Hello'),
              //         Text('Hello'),
              //       ],
              //     )

              // builder: (context) => AlertDialog(
              //       icon: Icon(Icons.home),
              //       title: const Text('Title'),
              //       content: const Text('Subtitle'),
              //       actions: [
              //         TextButton(
              //             onPressed: () {
              //               Navigator.of(context).pop(false);
              //             },
              //             child: const Text('Cancel')),
              //         TextButton(
              //             onPressed: () {
              //               Navigator.of(context).pop(true);
              //             },
              //             child: const Text('OK')),
              //       ],
              //     ));
              // debugPrint(result.toString());

              builder: (context) => const AboutDialog(
                    applicationIcon: FlutterLogo(),
                    applicationName: 'Flutter',
                    applicationVersion: '1.0.0',
                    children: [
                      Text('Hello'),
                      Text('Hello'),
                      Text('Hello'),
                    ],
                  ));
        },
      )),
    );
  }
}
