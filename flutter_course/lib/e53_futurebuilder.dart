import 'package:flutter/material.dart';

class Ex53FutureBuilder extends StatefulWidget {
  const Ex53FutureBuilder({super.key});

  @override
  State<Ex53FutureBuilder> createState() => _Ex53FutureBuilderState();
}

class _Ex53FutureBuilderState extends State<Ex53FutureBuilder> {
  // Move the Future variable here
  late Future<String> getData;

  // Move your async function here
  Future<String> getDataFromInternet() async {
    await Future.delayed(const Duration(seconds: 1));
    throw Exception("Error from internet");
    return "Data from internet";
  }

  @override
  void initState() {
    super.initState();
    // Initialize the future exactly once when the widget enters the tree
    getData = getDataFromInternet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Builder"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            FutureBuilder<String>(
              initialData: "Initial Data",
              future: getData,
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return const Text("No connection");
                  case ConnectionState.waiting:
                    debugPrint('Waiting state : ${snapshot.data}');
                    return const CircularProgressIndicator();
                  case ConnectionState.active:
                    debugPrint('Active state : ${snapshot.data}');
                    return const Text("Active");
                  case ConnectionState.done:
                    debugPrint(
                        'Done state : ${snapshot.data} ${snapshot.hasError}');
                    if (snapshot.hasError) {
                      return Text("Error: ${snapshot.error}");
                    } else {
                      return Text("Data: ${snapshot.data}");
                    }
                }
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  getData = getDataFromInternet();
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
