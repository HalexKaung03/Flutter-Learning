import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ex18ListTile extends StatelessWidget {
  const Ex18ListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: const Text('K')),
            title: const Text('Kyaw Kyaw'),
            subtitle: const Text('09882129100'),
            trailing: Icon(Icons.phone),
            isThreeLine: false,
            dense: false,
            tileColor: Colors.green[300],
            splashColor: Colors.amber,
            onTap: () {
              print('Clicked!');
            },
          )
        ],
      ),
    );
  }
}
