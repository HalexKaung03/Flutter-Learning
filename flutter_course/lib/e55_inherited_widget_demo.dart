import 'package:flutter/material.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int number = 0;
  void increase() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Build Main Widget');
    return NumberProvider(
      number: number,
      onPressed: increase,
      child: Scaffold(
        appBar: AppBar(
          actions: const [ShoppingCartWidget()],
          title: const Text('Inherited Widget'),
        ),
        body: const BodyWidget(),
      ),
    );
  }
}

class ShoppingCartWidget extends StatelessWidget {
  const ShoppingCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build Shopping Cart Widget');

    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Icon(Icons.shopping_cart),
        Positioned(
          top: -8,
          left: -10,
          child: CircleAvatar(
            radius: 10,
            child: Text(NumberProvider.of(context)!.number.toString()),
          ),
        )
      ],
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build Body Widget');
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          NoNeedNumberWidget(),
          SizedBox(
            height: 20,
          ),
          NeedNumberWidget(),
        ],
      ),
    );
  }
}

class NoNeedNumberWidget extends StatelessWidget {
  const NoNeedNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build No Need Number Widget');
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 25,
      ),
      color: Colors.amber,
      child: const Text('No need number in this widget'),
    );
  }
}

class NeedNumberWidget extends StatefulWidget {
  const NeedNumberWidget({super.key});

  @override
  State<NeedNumberWidget> createState() => _NeedNumberWidgetState();
}

class _NeedNumberWidgetState extends State<NeedNumberWidget> {
  @override
  void didChangeDependencies() {
    debugPrint('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Build Number Widget');
    return Column(
      children: [
        Text('Number: ${NumberProvider.of(context)!.number}'),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: NumberProvider.of(context)!.onPressed,
          child: const Text('+'),
        )
      ],
    );
  }
}

class NumberProvider extends InheritedWidget {
  const NumberProvider(
      {super.key,
      required this.child,
      required this.number,
      required this.onPressed})
      : super(child: child);

  @override
  final Widget child;
  final int number;
  final VoidCallback onPressed;

  static NumberProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NumberProvider>();
  }

  @override
  bool updateShouldNotify(NumberProvider oldWidget) {
    return oldWidget.number != number;
  }
}
