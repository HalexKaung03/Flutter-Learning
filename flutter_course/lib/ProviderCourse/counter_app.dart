import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_course/ProviderCourse/counter_app_provider.dart';
import 'package:flutter_course/ProviderCourse/counter_service.dart';
import 'package:flutter_course/ProviderCourse/future_provider_demo.dart';
import 'package:flutter_course/ProviderCourse/stream_provider_demo.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    log('counter app build');
    // final count = context.watch<CounterProvider>().count;
    final increase = context.read<CounterProvider>().increase;
    final stringValue = context.read<String>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App - Provider '),
        actions: [
          Badge.count(
            count: context.watch<CounterService>().countServiceData,
            child: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
              builder: (context, CounterProvider value, child) {
                // log('Consumer build');
                return Column(
                  children: [
                    Text('Count : ${value.count}'),
                    Text('StringValue : $stringValue'),
                  ],
                );
              },
            ),
            Selector<CounterProvider, int>(
              selector: (context, cp) => cp.number,
              builder: (context, int number, child) {
                // log('Selector build');
                return Text('Number : $number');
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FutureProviderDemo(),
                  ),
                );
              },
              child: const Text('To Future '),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StreamProviderDemo(),
                  ),
                );
              },
              child: const Text('To Stream'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterProvider>().increaseNumber();
              },
              child: const Text('Increase Number'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increase,
        child: const Icon(Icons.add),
      ),
    );
  }
}
