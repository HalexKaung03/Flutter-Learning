import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StreamProviderDemo extends StatelessWidget {
  const StreamProviderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider Demo'),
      ),
      body: StreamProvider(
        create: (context) => getStreamData(),
        initialData: 0,
        builder: (context, child) =>
            Text('hello stream, ${context.watch<int>()}'),
      ),
    );
  }

  Stream<int> getStreamData() async* {
    for (int i = 0; i < 5; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }
}
