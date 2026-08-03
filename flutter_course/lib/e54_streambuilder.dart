import 'package:flutter/material.dart';

class Ex54StreamBuilder extends StatefulWidget {
  const Ex54StreamBuilder({super.key});

  @override
  State<Ex54StreamBuilder> createState() => _Ex54StreamBuilderState();
}

class _Ex54StreamBuilderState extends State<Ex54StreamBuilder> {
  Stream<int> getStreamData() async* {
    for (int i = 1; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      if (i / 5 == 1) {
        throw Exception("Error Occurred");
      } else {
        yield i;
      }
    }
  }

  late Stream<int> streamData;

  @override
  void initState() {
    super.initState();
    streamData = getStreamData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream Builder"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            StreamBuilder<int>(
                initialData: 0,
                stream: streamData,
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      debugPrint("waiting: ${snapshot.data}");
                      return const CircularProgressIndicator();
                    case ConnectionState.active:
                      debugPrint(
                          "Active : ${snapshot.data} ${snapshot.hasError}  ${snapshot.error}");

                      return Text('Active : ${snapshot.data}');

                    case ConnectionState.done:
                      debugPrint(
                          "${snapshot.data} ${snapshot.hasError}  ${snapshot.error}");
                      if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      } else {
                        return Text('Done : ${snapshot.data}');
                      }
                  }
                }),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  streamData = getStreamData();
                });
              },
              child: const Text("Rebuild"),
            ),
          ],
        ),
      ),
    );
  }
}
