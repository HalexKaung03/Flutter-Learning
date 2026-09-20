import 'package:flutter/material.dart';
import 'package:flutter_course/ProviderCourse/counter_app.dart';
import 'package:flutter_course/ProviderCourse/counter_app_provider.dart';
import 'package:flutter_course/ProviderCourse/counter_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(const ProviderCourse());

class ProviderCourse extends StatelessWidget {
  const ProviderCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Course',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => CounterProvider(),
          ),
          Provider(
            create: (context) => 'StringProvider',
          ),
          ProxyProvider<CounterProvider, CounterService>(
            update: (context, counterProvider, previous) =>
                CounterService(counterProvider.count),
          ),
        ],
        child: const CounterApp(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
