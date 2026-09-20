import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FutureProviderDemo extends StatelessWidget {
  const FutureProviderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider Demo'),
      ),
      body: FutureProvider(
        create: (context) => getData(),
        initialData: FutureData('initial data'),
        builder: (context, child) =>
            Text('hello future, ${context.watch<FutureData>().data}'),
      ),
    );
  }

  Future<FutureData> getData() async {
    await Future.delayed(const Duration(seconds: 2));
    return FutureData('future data');
  }
}

class FutureData {
  final String data;
  FutureData(this.data);
}
